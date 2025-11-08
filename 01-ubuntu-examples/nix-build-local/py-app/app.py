
import requests
from rich.console import Console

def main():
    console = Console()
    console.print("[bold green]Hello from Python built with Nix![/bold green]")
    
    response = requests.get("https://api.github.com")
    console.print(f"GitHub API Status: [cyan]{response.status_code}[/cyan]")

if __name__ == "__main__":
    main()