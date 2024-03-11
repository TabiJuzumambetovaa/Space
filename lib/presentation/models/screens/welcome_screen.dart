import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_space_attempt2/presentation/bloc/solar_system_bloc.dart';
import 'package:flutter_space_attempt2/presentation/models/screens/home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ8NDQ0NFREWFhURFRUYHSggGBolHRUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDQ0NDw8NDysZFRktNysrNy0tLTctNzctNys3LSsrKy0rKy0rLS0tNy0rKysrKysrKystLSsrKystLSsrK//AABEIAJoBSAMBIgACEQEDEQH/xAAZAAEBAQEBAQAAAAAAAAAAAAAAAQIDBwb/xAAgEAEBAQEAAQMFAAAAAAAAAAAAAQIR8CFBURIxcbHx/8QAGgEAAwEBAQEAAAAAAAAAAAAAAQIDAAYFBP/EABcRAQEBAQAAAAAAAAAAAAAAAAABEQL/2gAMAwEAAhEDEQA/APjgHRPWAVhgAJ5BQFSRQBPIoAqSKAKkgoCeQUUVJBUUVJBYispIoKwi8RqBWJGokahLQJGpCRqQloEjUhGpCWgSNyJI1InaCyNyJI3InaUkbkSRuRO0pI3IkjciVoLmDWYJWlfHgPYePBQE8gshI1PQVJDnIgMeQUBUkFQE8gpFFSQVFFSQUUVJBZnpJ1q+fgTyF4gMcUWNWFgshLQJG5CRqErEjUI1CWgSNQkakTtKsjpnKZjVTtLRqQkakTtBZG5EkbkStKSNRI3jKfVK1jI3IJWg+KUHuPLkAVjyE/qoonkFRRUkFRRPIAoqSAKKkgqKKkgoCeRZVRWUkFRYwkaiNQtA41EahLQWRqQkWEtBY1IRqEtAkbiSNyJ2lVqRJG5ErSkjciSNyJ2gsjUhI3IlaUzHSRJG5ErQqyI3IJWlfDgOgedIKAnkUFE8gCipIuRAVJBSAqSKCieQUBUkSNQispIArGFIsC0GpfQFhKCxqRJGpCWgsakSNyEtAjXCRqRO0KuY1ISNSJ2lWRqEakStKsjcSRuJWlVuRJG5E7QWRuRJG8xG0tWQakE7Svg1B0j4pCKAqSCiVjyL1SQFSQVFMpIKNZnnyJ4Zz0XV9kZSQBYKkhFBjKBAtZY1CLC1ljUiSNQloLI1EkdM5JaUmVkGpE7QWNSJI3InaUkbkSRuRO0CRpG8xK0tajciSNyJWgsjciSNyJWlqyOmYmY6SJdUtpwakErSvP1RXUPmkFRRPIliiipIAoqSAKJ5Fi2+fZAVJFAFSRYoMcUWMKSNQi8LQVZCNSEtAjcSRqQloLlpJGpE7SrI1ISNSJ2gsjUhI1InaVZGpCNyJWhTMbkSRuRO0qyNyEjciNpaSNyEjciVpa1lqRJG5EuqWrIrUiJWg88BXWoyL9KCipIACeRQUVJEUUVJBQFSQWEVjwWRFYy2AsLQWLBqQtoEjUhGoS0CNSEjUTtBZGpEkbkTtKSNyJI3InaCyN5yzI3lO0tWRuRJGpErSrI6SJI3IlaFWRqQkbkStLTLpImY3Ij1SrI6SJI3Il1SrINSCVpXnAK7IJAATyCgKkgpIoqSAKKkgQVlJFAYVWJGgrEaiRqFrEjUhGpCWlI1DjUidoEjciSNSEtBZGpCRqRK0qyNyMxuRO0FkbkSRuRK0qyNyJI3IlaFWRuRJG5ErSVZG8xJG5EuqFWR0kSRvMR6pKsjciSOkiXVLVkRvKJaDzRQdsaQBTKSDWc9SRrvPb5Y8hb7RBRUkAWCpIRRIxzjUFjMNRI0SsNSJI1IW0FjpnPymY1399TtLSrCRqQloLI1IkjciVoLIo1nKdpauctyJI3InaVZG5EkbkStBcxuRJG5ErSrmOsnEk41ErS1ZG5EkbkR6pasjciSOkiPVKsiydJHSTiVpac4LQrR5kKO4VgCwTwigKkFATwaRWUgCto6sWJGoW0NI1GWoWtrUjUZjRKXWo1GY0nQ1qNyMRuJ0NakbkZjeU7SrI3IzG8pWhrUjUhG4laXSRuQjcStC0kbzEjcStK1I3IzluJdUtakbkZy3Eui1uRvMYy6ZR6LW5FZ6dTwMaoyg4z/2Q==', // Замените ссылку на ваше изображение
            ), // Путь к вашему изображению
            fit: BoxFit.cover, // Заполнение контейнера изображением
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               const Text("Welcome to Solar Sysytem",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
              TextButton(
                onPressed: () {
                  BlocProvider.of<SolarSystemBloc>(context).add(ClickEvent());
                  setState(() {});
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child:  const Text("Show the List...",style: TextStyle(color: Color.fromARGB(255, 218, 170, 226),fontSize: 15,),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
