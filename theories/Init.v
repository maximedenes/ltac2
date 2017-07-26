(************************************************************************)
(*  v      *   The Coq Proof Assistant  /  The Coq Development Team     *)
(* <O___,, *   INRIA - CNRS - LIX - LRI - PPS - Copyright 1999-2016     *)
(*   \VV/  **************************************************************)
(*    //   *      This file is distributed under the terms of the       *)
(*         *       GNU Lesser General Public License Version 2.1        *)
(************************************************************************)

Declare ML Module "ltac2_plugin".

Global Set Default Proof Mode "Ltac2".

(** Primitive types *)

Ltac2 Type int.
Ltac2 Type string.
Ltac2 Type char.
Ltac2 Type ident.

(** Constr-specific built-in types *)
Ltac2 Type meta.
Ltac2 Type evar.
Ltac2 Type sort.
Ltac2 Type cast.
Ltac2 Type instance.
Ltac2 Type constant.
Ltac2 Type inductive.
Ltac2 Type constructor.
Ltac2 Type projection.
Ltac2 Type constr.

Ltac2 Type message.
Ltac2 Type exn := [ .. ].
Ltac2 Type 'a array.

(** Pervasive types *)

Ltac2 Type 'a option := [ None | Some ('a) ].

Ltac2 Type 'a ref := { mutable contents : 'a }.

Ltac2 Type bool := [ true | false ].

Ltac2 Type 'a result := [ Val ('a) | Err (exn) ].

(** Pervasive exceptions *)

Ltac2 Type exn ::= [ Out_of_bounds ].
(** Used for bound checking, e.g. with String and Array. *)

Ltac2 Type exn ::= [ Not_focussed ].
(** In Ltac2, the notion of "current environment" only makes sense when there is
    at most one goal under focus. Contrarily to Ltac1, instead of dynamically
    focussing when we need it, we raise this non-backtracking error when it does
    not make sense. *)

Ltac2 Type exn ::= [ Not_found ].
(** Used when something is missing. *)