class CursosController < ApplicationController

  def index
    @cursos = Curso.all
  end

  def cursos
    @cursos = Curso.all
  end

  def novo

  end

  def criar
    Curso.create({
      nome: params[:nome],
      imagem: params[:imagem]
    })

    redirect_to '/cursos'
  end

  def editar
    id_curso = params[:id]
    @curso = Curso.find(id_curso)
  end

  def atualizar
    @curso = Curso.find(params[:id])

    @curso.update({
      nome: params[:nome],
      imagem: params[:imagem]
    })

    redirect_to '/cursos'
  end

  def deletar
    curso = Curso.find(params[:id])
    curso.destroy

    redirect_to '/cursos'
  end

end
