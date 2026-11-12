import InitECandidate.Solver.MemSafe.Ptx.PtN1

/-!
# F3e: the context after `te` is adopted (`AdK`)
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

structure AdK (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w wt wa ak nv nkv : BitVec 64) (nbl : Nat) : Prop where
  C0 : Cy E En S rp rl buf n CV w
  hte : En (nm "te") = some (.val (.word wt))
  hwa : En (nm "al_addrs") = some (.val (.word wa))
  hak : En (nm "al_keys") = some (.val (.word ak))
  hnal : En (nm "nal") = some (.val (.word nv))
  hnk : En (nm "nkeys") = some (.val (.word nkv))
  hmg : ∃ mg : BitVec 64, En (nm "mgas") = some (.val (.word mg)) ∧ S (Fct.prop (mg.toNat ≤ 2 ^ 24))
  hrs : ∃ rs : BitVec 64, En (nm "reservoir") = some (.val (.word rs))
  hnv : NalOK E nv
  hnbl : nbl = (nv.toNat + 1) * 8
  hnkv : nkv.toNat = nsS E.s0.memory (lst0 E) nv.toNat
  hobjte : S (Fct.obj wt tTE 200)
  hppa : S (Fct.prop (BlkP wa nbl))
  hfba : S (Fct.fbuf wa nbl)
  harrf : S (Fct.arrbuf wa nbl (nv.toNat + 1) 20)
  harr1 : S (Fct.arrbuf wa nbl 1 20)
  hobj : S (Fct.obj ak tVAL (akN nkv.toNat))
  hppk : S (Fct.prop (ak.toNat % 8 = 0 ∧ heapBase ≤ ak.toNat ∧ ak.toNat + akN nkv.toNat ≤ heapEnd))

theorem cy_drop2 {E : PtE σ} {En : Env} {S Sx : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w : BitVec 64} (C : Cy E En S rp rl buf n CV w) {L : List Fct}
    (hsub : ∀ f, Sx f → S f ∨ f ∈ L) (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v))
    (hkeep : ∀ f, S f → SafeK f → Sx f) : Cy E En Sx rp rl buf n CV w := by
  refine ⟨C.tx, C.idx, C.enc, C.sd, hkeep _ C.osd trivial, hkeep _ C.bsd trivial,
    hkeep _ C.obj trivial, hkeep _ C.objE trivial, ⟨?_, hkeep _ C.gl.ts trivial⟩, ?_,
    hkeep _ C.cv1 trivial, hkeep _ C.cv2 trivial, ?_, C.bnd, C.un⟩
  · intro g ty h
    rcases hsub _ h with h | h
    · exact C.gl g ty h
    · exact absurd rfl ((hL _ h).1 g ty)
  · intro ty h
    rcases hsub _ h with h | h
    · exact C.nobal ty h
    · exact absurd rfl ((hL _ h).1 _ _)
  · intro a v h
    rcases hsub _ h with h | h
    · exact C.cvonly a v h
    · exact absurd rfl ((hL _ h).2 a v)

theorem adk_of_tek {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl) :
    AdK E En (SAd S wt wa nbl (nv.toNat + 1)) rp rl buf n CV w wt wa ak nv nkv nbl := by
  have hk : ∀ f, S f → SafeK f → SAd S wt wa nbl (nv.toNat + 1) f := fun f hf hs => Or.inl ⟨hf, hs⟩
  refine ⟨cy_drop2 K.C0 (L := [Fct.fbuf wa nbl, Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20,
      Fct.obj wt tTE 200]) ?_ ?_ hk, K.hte, K.hwa, K.hak, K.hnal, K.hnk, ?_, K.hrs, K.hnv, K.hnbl, K.hnkv,
    Or.inr (by simp), hk _ K.hppa trivial, Or.inr (by simp), Or.inr (by simp), Or.inr (by simp),
    hk _ K.hobj trivial, hk _ K.hppk trivial⟩
  · intro f hf
    rcases hf with ⟨hS, -⟩ | hf
    · exact Or.inl hS
    · exact Or.inr hf
  · intro X hX; simp at hX; rcases hX with rfl | rfl | rfl | rfl <;> simp
  · obtain ⟨mg, h1, h2⟩ := K.hmg; exact ⟨mg, h1, hk _ h2 trivial⟩

theorem rdin_of_tek {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl) :
    RdIn (SAd S wt wa nbl (nv.toNat + 1)) [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20] := by
  intro f hf hy
  rcases hf with ⟨hS, hsf⟩ | hf
  · rcases K.hrd f hS hy with c | m
    · exact Or.inl c
    · -- a reading fact that is safe is a cellv
      exfalso
      revert hsf
      unfold TeRd2 at m
      rcases List.mem_cons.mp m with h | m
      · rw [h]; simp [SafeK]
      rcases List.mem_cons.mp m with h | m
      · rw [h]; simp [SafeK]
      rcases List.mem_cons.mp m with h | m
      · rw [h]; simp [SafeK]
      rcases List.mem_cons.mp m with h | m
      · rw [h]; simp [SafeK]
      rcases List.mem_cons.mp m with h | m
      · rw [h]; simp [SafeK]
      · exact absurd m (by simp)
  · right
    simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf ⊢
    rcases hf with rfl | rfl | rfl | rfl
    · exfalso; obtain ⟨y, hy'⟩ := hy; simp [Fct.reads] at hy'
    · exact Or.inl rfl
    · exact Or.inr rfl
    · exfalso; obtain ⟨y, hy'⟩ := hy; simp [Fct.reads] at hy'

end InitECandidate.Solver.MemSafe.Ptx
