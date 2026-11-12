import InitECandidate.Solver.MemSafe.Ptx.PtD8

/-!
# F3e: the phase context `Cy` (like `Cx2` but allowing reading facts; the reading facts are listed in `RdIn`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

structure Cy (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w : BitVec 64) : Prop where
  tx : En (nm "tx") = some (.val (.word E.tx))
  idx : En (nm "index") = some (.val (.word E.idx))
  enc : En (nm "enc") = some (wv [rp, rl])
  sd : En (nm "sender") = some (.val (.word w))
  osd : S (Fct.obj w tB24 24)
  bsd : S (Fct.bufok0 w 24)
  obj : S (Fct.obj E.tx tTX 0)
  objE : S (Fct.obj (BitVec.ofNat 64 buf) tVAL n)
  gl : GlI S
  nobal : ∀ ty, ¬ S (Fct.gobj (nm "bal_index") ty)
  cv1 : S (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16) rp)
  cv2 : S (Fct.cellv (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) rl)
  cvonly : ∀ a v, S (Fct.cellv a v) → a ∈ CV
  bnd : 1 ≤ rl.toNat ∧ buf ≤ rp.toNat ∧ rp.toNat + rl.toNat ≤ buf + n ∧ buf % 8 = 0 ∧ n % 8 = 0 ∧ buf + n < 2 ^ 64
  un : ∀ x, x ∉ TRK → En x = none

theorem cy_of_cx2 {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cx2 E En S rp rl buf n CV w) : Cy E En S rp rl buf n CV w :=
  ⟨C.1.tx, C.1.idx, C.1.enc, C.2.1, C.2.2.1, C.2.2.2, C.1.obj, C.1.objE, C.1.gl, C.1.nobal, C.1.cv1, C.1.cv2,
    C.1.cvonly, C.1.bnd, C.1.un⟩

theorem cy_gen {E : PtE σ} {En En' : Env} {S S' : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {L : List Fct}
    (hE : ∀ y, Cx2V y → ∀ u, En y = some u → En' y = some u) (hS : ∀ f, S f → S' f)
    (hS' : ∀ f, S' f → S f ∨ f ∈ L)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v))
    (hun : ∀ y, y ∉ TRK → En' y = none) : Cy E En' S' rp rl buf n CV w := by
  refine ⟨hE _ (Or.inl rfl) _ C.tx, hE _ (Or.inr (Or.inl rfl)) _ C.idx,
    hE _ (Or.inr (Or.inr (Or.inl rfl))) _ C.enc, hE _ (Or.inr (Or.inr (Or.inr rfl))) _ C.sd,
    hS _ C.osd, hS _ C.bsd, hS _ C.obj, hS _ C.objE, ⟨?_, hS _ C.gl.ts⟩, ?_, hS _ C.cv1, hS _ C.cv2, ?_, C.bnd, hun⟩
  · intro g ty h
    rcases hS' _ h with h | h
    · exact C.gl g ty h
    · exact absurd rfl ((hL _ h).1 g ty)
  · intro ty h
    rcases hS' _ h with h | h
    · exact C.nobal ty h
    · exact absurd rfl ((hL _ h).1 _ _)
  · intro a v h
    rcases hS' _ h with h | h
    · exact C.cvonly a v h
    · exact absurd rfl ((hL _ h).2 a v)

theorem cy_set {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender") (v : ValueHOL 64) :
    Cy E (En.set x v) S rp rl buf n CV w :=
  cy_gen C (L := []) (env_set_cx2 hn v) (fun _ h => h) (fun f h => Or.inl h) (by simp) (un_set C.un hx v)

theorem cy_setF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender") (v : ValueHOL 64) (L : List Fct)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v)) :
    Cy E (En.set x v) (addF S L) rp rl buf n CV w :=
  cy_gen C (env_set_cx2 hn v) (fun _ h => Or.inl h) (fun f h => h) hL (un_set C.un hx v)

theorem cy_addF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) (L : List Fct)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v)) :
    Cy E En (addF S L) rp rl buf n CV w :=
  cy_gen C (fun y _ u h => h) (fun _ h => Or.inl h) (fun f h => h) hL C.un

theorem cy_prop {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender") (v : ValueHOL 64) (P : Prop) :
    Cy E (En.set x v) (fun f => S f ∨ f = Fct.prop P) rp rl buf n CV w :=
  cy_gen C (L := [Fct.prop P]) (env_set_cx2 hn v) (fun _ h => Or.inl h)
    (fun f h => h.imp id (fun e => by simp [e])) (by intro X hX; simp at hX; subst hX; simp) (un_set C.un hx v)

theorem cy_addp {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) (P : Prop) :
    Cy E En (fun f => S f ∨ f = Fct.prop P) rp rl buf n CV w :=
  cy_gen C (L := [Fct.prop P]) (fun y _ u h => h) (fun _ h => Or.inl h)
    (fun f h => h.imp id (fun e => by simp [e])) (by intro X hX; simp at hX; subst hX; simp) C.un

/-- The phase context: `Cy`, known bindings, known facts, and the list of reading facts. -/
def CyB (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w : BitVec 64) (ex : List (MlS × ValueHOL 64)) (fs rdl : List Fct) : Prop :=
  Cy E En S rp rl buf n CV w ∧ EX En ex ∧ FXs S fs ∧ RdIn S rdl

theorem cyb_of_cxb {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} {ex : List (MlS × ValueHOL 64)} {fs : List Fct}
    (C : CxB E En S rp rl buf n CV w ex fs) : CyB E En S rp rl buf n CV w ex fs [] :=
  ⟨cy_of_cx2 C.1, C.2.1, C.2.2, fun f hf hy => Or.inl (C.1.1.nord f hf hy)⟩

end InitECandidate.Solver.MemSafe.Ptx
