import 'package:cu_iti_quizapp/data/cubits/news_cubit/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsScreenWithCubit extends StatelessWidget {
  NewsScreenWithCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                  onPressed: () async {
                    context.read<NewsCubit>().getNews();
                  },
                  child: Text('Get News')),
              BlocBuilder<NewsCubit, NewsState>(
                builder: (context, state) {
                  if (state is NewsInitial) {
                    return Center(
                      child: Text('Please click the button to get news'),
                    );
                  } else if (state is NewsLoading) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is NewsSuccess) {
                    return Column(
                      children: [
                        for (int i = 0; i < state.response.articles.length; i++)
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(16),
                            height:
                                MediaQuery.of(context).size.height * 240 / 812,
                            width:
                                MediaQuery.of(context).size.width * 320 / 375,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      state.response.articles[i].urlToImage ??
                                          "")),
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      80 /
                                      812,
                                ),
                                Text("by ${state.response.articles[i].author}"),
                                Text(
                                  state.response.articles[i].content ??
                                      "no content",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                  maxLines: 3,
                                ),
                                Spacer(),
                                Text(
                                  state.response.articles[i].description ??
                                      "No description",
                                  maxLines: 2,
                                ),
                              ],
                            ),
                          )
                      ],
                    );
                  } else {
                    return Center(
                      child: Text('Something went wrong'),
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
