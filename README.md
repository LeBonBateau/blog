# blog

## Cloner le projet

`git clone https://github.com/LeBonBateau/blog.git`
`git submodule update --init --recursive`

## Pousser des modifications
### Publier sur prod
`./cmd/deploy.sh`

### Pousser les mise à jour sur Github
`git add .`
`git commit -m "Ton message"`
`git pull`
`git push `

