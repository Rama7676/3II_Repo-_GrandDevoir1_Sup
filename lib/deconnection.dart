import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login.dart';

class DeconnexionPage extends StatefulWidget {
  const DeconnexionPage({super.key});

  @override
  State<DeconnexionPage> createState() => _DeconnexionPageState();
}

class _DeconnexionPageState extends State<DeconnexionPage> {
  Future<void> deconnexion(BuildContext context) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirmer'),
        content: const Text('Voulez-vous vraiment vous déconnecter ?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Annuler'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text('Déconnecter'),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();

    if (!mounted) return;

    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (_) => const Loginpage()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Déconnexion'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => deconnexion(context),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          ),
          child: const Text(
            'Se déconnecter',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
