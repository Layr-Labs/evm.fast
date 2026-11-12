import InitECandidate.Solver.MemSafe.Ptx.PtP8

/-!
# F3f: the call branch (`tx.to != 0`) of the message-building code (`ptS186`)
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

theorem benign_prop (P : Prop) : (∀ g ty, Fct.prop P ≠ Fct.gobj g ty) ∧ (∀ a v, Fct.prop P ≠ Fct.cellv a v) ∧
    (∀ y, ¬ (Fct.prop P).reads y) := ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩

theorem benign_bufok0 (w : BitVec 64) (n : Nat) : (∀ g ty, Fct.bufok0 w n ≠ Fct.gobj g ty) ∧
    (∀ a v, Fct.bufok0 w n ≠ Fct.cellv a v) ∧ (∀ y, ¬ (Fct.bufok0 w n).reads y) :=
  ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩

theorem benign_obj (b : BitVec 64) (ty n : Nat) : (∀ g ty', Fct.obj b ty n ≠ Fct.gobj g ty') ∧
    (∀ a v, Fct.obj b ty n ≠ Fct.cellv a v) ∧ (∀ y, ¬ (Fct.obj b ty n).reads y) :=
  ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩

theorem benign_fbuf (b : BitVec 64) (n : Nat) : (∀ g ty', Fct.fbuf b n ≠ Fct.gobj g ty') ∧
    (∀ a v, Fct.fbuf b n ≠ Fct.cellv a v) ∧ (∀ y, ¬ (Fct.fbuf b n).reads y) :=
  ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩

set_option hygiene false in
macro "hnr_tac" : tactic =>
  `(tactic| ((try simp only [List.forall_mem_cons]); (try dsimp only); repeat' apply And.intro
             all_goals first | omega | (intro p hp; have := hL p hp; omega)))

/-- **The create target as a fact** (package F3m): when `tx.to = 0` (the create branch), `m[32]` is a
`tB24` object; otherwise nothing. -/
def tgtF (t0 v32 : BitVec 64) : Fct := if t0 = 0 then Fct.obj v32 tB24 24 else Fct.prop True

theorem benign_tgtF (t0 v32 : BitVec 64) : (∀ g ty, tgtF t0 v32 ≠ Fct.gobj g ty) ∧
    (∀ a v, tgtF t0 v32 ≠ Fct.cellv a v) ∧ (∀ y, ¬ (tgtF t0 v32).reads y) := by
  unfold tgtF
  split
  · exact ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩
  · exact ⟨fun g ty h => (by cases h), fun a v h => (by cases h), fun y h => h⟩

/-- The facts after the branch. -/
def Sb (S : FS) (wm v32 v96 v120 t0 : BitVec 64) : FS :=
  addF S [Fct.memw (wm + BitVec.ofNat 64 32) v32, Fct.memw (wm + BitVec.ofNat 64 96) v96,
    Fct.memw (wm + BitVec.ofNat 64 120) v120,
    Fct.bufok0 v32 20, Fct.prop (v120.toNat + 63 < 2 ^ 64), Fct.prop (v96.toNat < 2 ^ 32), tgtF t0 v32]

/-- **The call branch**: `m[32] = tx.to`, `m[88] = tx.data`, ... -/
theorem pt_else {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)} {we : BitVec 64}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0) (hemp : En (nm "empty") = some (.val (.word we)))
    (hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) ≠ 0) :
    HN (PA E En S) ptS186
      (fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) t) := by
  have htx := K.A.C0.tx
  unfold ptS186
  refine hghostF (Fct.prop True) (fun s hpa D Γ p hr hL' => trivial) ?_
  have K := msk_addF K [Fct.prop True]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
  refine hghostF (Fct.bufok0 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) 20)
    (fun s hpa D Γ p hr hL' => bufok0_pre hP hr (Or.resolve_left hP.txbuf.1 hTO)) ?_
  refine hghostF (Fct.prop ((BitVec.ofNat 64 0).toNat + 63 < 2 ^ 64)) (fun s hpa D Γ p hr hL' => show (BitVec.ofNat 64 0).toNat + 63 < 2 ^ 64 by decide) ?_
  have K0a := msk_addF K [Fct.bufok0 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) 20]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_bufok0 _ _)
  have K0b := msk_addF K0a [Fct.prop ((BitVec.ofNat 64 0).toNat + 63 < 2 ^ 64)]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
  refine hghostF (Fct.prop ((rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat < 2 ^ 32))
    (fun s hpa D Γ p hr hL' => tx_n_bound32 hP) ?_
  have K0 := msk_addF K0b [Fct.prop ((rd E.s0.memory (E.tx + BitVec.ofNat 64 200)).toNat < 2 ^ 32)]
    (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
  refine hseqN (hn_c9_one K0 (off := 32) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152))
    (evI_ldtx hP htx (by norm_num) (by norm_num)) (by norm_num) (by norm_num) (by hnr_tac)) ?_
  have K1 := msk_addM K0 (off := 32) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) (by norm_num) (by norm_num)
  unfold ptS188
  refine hseqN (hn_stMs K1 (off := 88) (k := 1) (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num)
    (by hnr_tac)) ?_
  unfold ptS189
  refine hseqN (hn_c9_one K1 (off := 96) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 200))
    (evI_ldtx hP htx (by norm_num) (by norm_num)) (by norm_num) (by norm_num) (by hnr_tac)) ?_
  have K1b := msk_addM K1 (off := 96) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 200)) (by norm_num) (by norm_num)
  unfold ptS190
  refine hseqN (hn_stMs K1b (off := 112) (k := 1) (hlen_lv_w hemp) (by norm_num) (by norm_num)
    (by hnr_tac)) ?_
  unfold ptS191
  have hA := hn_c9_one K1b (off := 120) (x := BitVec.ofNat 64 0) (fun s hpa => evI_cw s 0) (by norm_num)
    (by norm_num) (by hnr_tac)
  have K2 := msk_addM K1b (off := 120) (x := BitVec.ofNat 64 0) (by norm_num) (by norm_num)
  have hB := hn_stMs K2 (off := 104) (k := 1) (e := .load .one (.op .add [lv (nm "tx"), cw 152])) (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num)
    (by hnr_tac)
  refine hn_post (hn_seq hA hB) ?_
  intro t _ h
  have htT : tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) = Fct.prop True := by
    unfold tgtF; rw [if_neg hTO]
  exact ⟨rd E.s0.memory (E.tx + BitVec.ofNat 64 152), rd E.s0.memory (E.tx + BitVec.ofNat 64 200), BitVec.ofNat 64 0, pa_mono h (fun x v h => h) (by
    intro f hf
    unfold Sb addF at hf
    rw [htT] at hf
    unfold addF
    simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf ⊢
    tauto)⟩

end InitECandidate.Solver.MemSafe.Ptx
