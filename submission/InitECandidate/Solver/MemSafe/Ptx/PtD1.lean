import InitECandidate.Solver.MemSafe.Ptx.PtC6

/-!
# F3e: generic walk helpers (context transport `cx2_gen`, `callOK_lvbufs`)
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

theorem evs_get {s : State σ} : ∀ {args : List (ExpHOL 64)} {vs : List (ValueHOL 64)},
    evs s args = some vs → ∀ (i : Nat) (e : ExpHOL 64), args[i]? = some e →
      ∃ v, vs[i]? = some v ∧ ev s e = some v
  | [], vs, h, i, e, he => by simp at he
  | a :: as, vs, h, i, e, he => by
    obtain ⟨v, vs', rfl, hv, h'⟩ := Spec.evs_cons_inv h
    cases i with
    | zero =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at he
      subst he
      exact ⟨v, rfl, hv⟩
    | succ i =>
      simp only [List.getElem?_cons_succ] at he
      obtain ⟨v', h1, h2⟩ := evs_get h' i e he
      exact ⟨v', by simpa using h1, h2⟩

/-- The four bindings `Cx2` talks about. -/
def Cx2V (y : MlS) : Prop := y = nm "tx" ∨ y = nm "index" ∨ y = nm "enc" ∨ y = nm "sender"

/-- Benign transport of `Cx2`: the new environment keeps every old binding, the new facts are neither
global-object nor written-cell facts. -/
theorem cx2_gen {E : PtE σ} {En En' : Env} {S S' : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cx2 E En S rp rl buf n CV w) {L : List Fct}
    (hE : ∀ y, Cx2V y → ∀ u, En y = some u → En' y = some u) (hS : ∀ f, S f → S' f)
    (hS' : ∀ f, S' f → S f ∨ f ∈ L)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y))
    (hun : ∀ y, y ∉ TRK → En' y = none) : Cx2 E En' S' rp rl buf n CV w := by
  obtain ⟨C1, hs, ho, hb⟩ := C
  refine ⟨⟨hE _ (Or.inl rfl) _ C1.tx, hE _ (Or.inr (Or.inl rfl)) _ C1.idx, hE _ (Or.inr (Or.inr (Or.inl rfl))) _ C1.enc, hS _ C1.obj, hS _ C1.objE, ⟨?_, hS _ C1.gl.ts⟩, ?_, hS _ C1.cv1,
    hS _ C1.cv2, ?_, ?_, C1.bnd, hun⟩, hE _ (Or.inr (Or.inr (Or.inr rfl))) _ hs, hS _ ho, hS _ hb⟩
  · intro g ty h
    rcases hS' _ h with h | h
    · exact C1.gl g ty h
    · exact absurd rfl ((hL _ h).1 g ty)
  · intro ty h
    rcases hS' _ h with h | h
    · exact C1.nobal ty h
    · exact absurd rfl ((hL _ h).1 _ _)
  · intro a v h
    rcases hS' _ h with h | h
    · exact C1.cvonly a v h
    · exact absurd rfl ((hL _ h).2.1 a v)
  · intro f hf ⟨y, hy⟩
    rcases hS' _ hf with hf | hf
    · exact C1.nord f hf ⟨y, hy⟩
    · exact absurd hy ((hL _ hf).2.2 y)

theorem env_mono_set {En : Env} {x : MlS} (hx : En x = none) (v : ValueHOL 64) :
    ∀ y u, En y = some u → (En.set x v) y = some u := by
  intro y u h
  have : y ≠ x := fun e => by rw [e, hx] at h; cases h
  rw [env_set_ne _ _ this]; exact h

theorem env_set_cx2 {En : Env} {x : MlS} (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender")
    (v : ValueHOL 64) : ∀ y, Cx2V y → ∀ u, En y = some u → (En.set x v) y = some u := by
  intro y hy u h
  have : y ≠ x := by
    rintro rfl
    rcases hy with rfl | rfl | rfl | rfl
    exacts [hn.1 rfl, hn.2.1 rfl, hn.2.2.1 rfl, hn.2.2.2 rfl]
  rw [env_set_ne _ _ this]; exact h

theorem un_set {En : Env} (hun : ∀ y, y ∉ TRK → En y = none) {x : MlS} (hx : x ∈ TRK) (v : ValueHOL 64) :
    ∀ y, y ∉ TRK → (En.set x v) y = none := by
  intro y hy
  rw [env_set_ne _ _ (trk_ne hx hy)]; exact hun y hy

theorem cx2_set {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cx2 E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender")
    (v : ValueHOL 64) : Cx2 E (En.set x v) S rp rl buf n CV w :=
  cx2_gen C (L := []) (env_set_cx2 hn v) (fun _ h => h) (fun f h => Or.inl h) (by simp)
    (un_set C.1.un hx v)

theorem cx2_setF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cx2 E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender")
    (v : ValueHOL 64) (L : List Fct) (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y)) :
    Cx2 E (En.set x v) (addF S L) rp rl buf n CV w :=
  cx2_gen C (env_set_cx2 hn v) (fun _ h => Or.inl h) (fun f h => h) hL (un_set C.1.un hx v)

/-- Adding a single non-global, non-cell fact. -/
theorem cx2_prop {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cx2 E En S rp rl buf n CV w) {x : MlS} (hx : x ∈ TRK)
    (hn : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender")
    (v : ValueHOL 64) (P : Prop) :
    Cx2 E (En.set x v) (fun f => S f ∨ f = Fct.prop P) rp rl buf n CV w :=
  cx2_gen C (L := [Fct.prop P]) (env_set_cx2 hn v) (fun _ h => Or.inl h)
    (fun f h => h.imp id (fun e => by simp [e])) (by intro X hX; simp at hX; subst hX; simp [Fct.reads]) (un_set C.1.un hx v)

/-- `CallOK` for a call whose `buf` arguments are `lv x` locals holding the safe 24-byte buffers. -/
theorem callOK_lvbufs {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap}
    {args : List (ExpHOL 64)}
    (hcs : CsOK cs) (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hjo : JrOut sg.gw) (hjn : ∀ g ∈ sg.gw, g = Hooks.gJn)
    (hfin : ptAllNames.contains f = true) (hlen : sg.params.length = args.length)
    (hpar : ∀ (i : Nat) (pt : MemSafe.PT), sg.params[i]? = some pt →
      pt = MemSafe.PT.any ∨ ∃ n, pt = MemSafe.PT.buf n ∧ n ≤ 24)
    (hbuf : ∀ (i n : Nat), sg.params[i]? = some (MemSafe.PT.buf n) →
      ∃ (x : MlS) (w : BitVec 64), args[i]? = some (lv x) ∧ En x = some (.val (.word w)) ∧ S (Fct.bufok0 w 24))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) : CallOK E En S f sg cs args := by
  refine callOK_bufs hcs hgw hjo hjn hfin hlen hpar ?_ hGl
  intro s hpa vs hvs i n hi
  obtain ⟨x, w, hx, hEn, hS⟩ := hbuf i n hi
  obtain ⟨v, hv, hev⟩ := evs_get hvs i _ hx
  have := evI_lv (hpa.2 _ _ hEn) v hev
  subst this
  exact ⟨w, hv, hS⟩

end InitECandidate.Solver.MemSafe.Ptx
