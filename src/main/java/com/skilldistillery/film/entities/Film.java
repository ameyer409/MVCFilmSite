package com.skilldistillery.film.entities;

import java.util.List;
import java.util.Objects;

public class Film {

		private int id;
		private String title;
		private String description;
		private int releaseYear;
		private int languageId;
		private int length;
		private String rating;
		private List<Actor> actors;
		private int rentalDuration;
		private double rentalRate;
		private double replacementCost;
		private String language;

		public Film(int id, String title, String description, int releaseYear, int languageId, int length,
				String rating, List<Actor> actors, int rentalDuration, double rentalRate, double replacementCost) {
			super();
			this.id = id;
			this.title = title;
			this.description = description;
			this.releaseYear = releaseYear;
			this.languageId = languageId;
			this.length = length;
			this.rating = rating;
			this.actors = actors;
			this.rentalDuration = rentalDuration;
			this.rentalRate = rentalRate;
			this.replacementCost = replacementCost;
		}
		
		public Film() {
		}
		
		public Film(int id, String title, String description, int releaseYear, int languageId, int length, String rating,
				List<Actor> actors) {
			super();
			this.id = id;
			this.title = title;
			this.description = description;
			this.releaseYear = releaseYear;
			this.languageId = languageId;
			this.length = length;
			this.rating = rating;
			this.actors = actors;
		}
		
		public Film(int id, String title, int releaseYear, String rating, String description, int languageId) {
			super();
			this.id = id;
			this.title = title;
			this.releaseYear = releaseYear;
			this.rating = rating;
			this.description = description;
			this.languageId = languageId;
		}
		
		public Film(String title, String description, int releaseYear, String rating, int languageId) {
			super();
			this.title = title;
			this.description = description;
			this.releaseYear = releaseYear;
			this.rating = rating;
			this.languageId = languageId;
		}
		
		public String getLanguage() {
			return language;
		}

		public void setLanguage(String language) {
			this.language = language;
		}

		public int getRentalDuration() {
			return rentalDuration;
		}

		public void setRentalDuration(int rentalDuration) {
			this.rentalDuration = rentalDuration;
		}

		public double getRentalRate() {
			return rentalRate;
		}

		public void setRentalRate(double rentalRate) {
			this.rentalRate = rentalRate;
		}

		public double getReplacementCost() {
			return replacementCost;
		}

		public void setReplacementCost(double replacementCost) {
			this.replacementCost = replacementCost;
		}

		

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getDescription() {
			return description;
		}

		public void setDescription(String description) {
			this.description = description;
		}

		public int getReleaseYear() {
			return releaseYear;
		}

		public void setReleaseYear(int releaseYear) {
			this.releaseYear = releaseYear;
		}

		public double getLength() {
			return length;
		}

		public void setLength(int length) {
			this.length = length;
		}

		public String getRating() {
			return rating;
		}

		public void setRating(String rating) {
			this.rating = rating;
		}

		public List<Actor> getActors() {
			return actors;
		}

		public void setActors(List<Actor> actors) {
			this.actors = actors;
		}

		@Override
		public int hashCode() {
			return Objects.hash(actors, description, id, languageId, length, rating, releaseYear, title);
		}

		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Film other = (Film) obj;
			return Objects.equals(actors, other.actors) && Objects.equals(description, other.description) && id == other.id
					&& languageId == other.languageId && length == other.length && Objects.equals(rating, other.rating)
					&& releaseYear == other.releaseYear && Objects.equals(title, other.title);
		}

		@Override
		public String toString() {
			return "Film id = " + id + ", title = " + title + ", description = " + description + ", release year = "
					+ releaseYear + ", languageId = " + languageId + ", length = " + length + " minutes, rating = " + rating
					+ "\n Actors = " + actors;
		}

		public int getLanguageId() {
			return languageId;
		}

		public void setLanguageId(int languageId) {
			this.languageId = languageId;
		}
		
//		public String getLanguageString() {
//			return fd.getLanguageStringById(languageId);
//		}
	}
