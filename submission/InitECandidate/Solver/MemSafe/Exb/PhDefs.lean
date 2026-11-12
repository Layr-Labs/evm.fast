import InitECandidate.Solver.MemSafe.Exb.PKit
import InitECandidate.Solver.MemSafe.Exb.PhCode
import InitECandidate.Solver.MemSafe.Exb.PhGw
import InitECandidate.Solver.MemSafe.Exb.Crh
import InitECandidate.Solver.MemSafe.Exb.Ivvh
import InitECandidate.Solver.MemSafe.Aw.Eer
import InitECandidate.Solver.MemSafe.Aw.Wd
import InitECandidate.Solver.MemSafe.Aw.Brl
import InitECandidate.Solver.MemSafe.Aw.HdrFinal

/-!
# `payload_header`: the hypotheses and the invariant

Hypotheses, stated once and discharged elsewhere:
* `HypPlS`: what package F1a exports from the `tPL` hook: the slice array is a `tSLA` object whose slices lie in `tVAL` objects (`IvE`), the withdrawal count
  fits, and the fee recipient `[raw + 32, + 20)` lies in a `tVAL` object.
* `HypWdFresh`: `encode_withdrawal_rlp`'s result lies in the block it allocated (package rcpt_fresh).

`PhI`: the facts that hold from the start and survive everything; `EA`: the first phase, while every object still lies below the header `H`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

abbrev Wv (x : BitVec 64) : ValueHOL 64 := .val (.word x)

def HypPlS (σ : Type) : Prop :=
  ∀ (Γ : Gam) (s : State σ) (o : Obj), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → o ∈ Γ → o.ty = Types.tPL →
    IvE (Hooks.txF s.memory o 4) (Hooks.txF s.memory o 5) Γ s.memory ∧ (Hooks.txF s.memory o 7).toNat < 2 ^ 32 ∧
      SlObj Γ (Hooks.txF s.memory o 0 + BitVec.ofNat 64 32) (BitVec.ofNat 64 20)

def HypWdFresh (σ : Type) : Prop :=
  FunSpec σ guestCtx (nm "encode_withdrawal_rlp") (fun vs s r t => ∀ v, r = .returned v → ∀ p p' : Ptrs,
    ptrsOf s = some p → p.Ordered → ptrsOf t = some p' → ∃ B T : BitVec 64, v = .rStruct [Wv B, Wv T] ∧ B.toNat % 8 = 0 ∧
      p.hp ≤ B.toNat ∧ B.toNat + 64 ≤ p'.hp ∧ T.toNat ≤ 64)

/-- `Below` under a call that adds no object. -/
theorem below_nf {Γ Γ' : Gam} {q q' : Ptrs} {h : Nat} (hord : q'.Ordered) (hL : Layout Types.guestC q' Γ')
    (hnf : NewFresh Γ Γ' q q) (hB : Aw.Below Γ h) : Aw.Below Γ' h := by
  intro o ho
  have hz := (hL.1 o ho).2.2.1
  have hend := Ra.obj_end_le hord hL ho
  have hse : scratchEnd < 2 ^ 60 := by decide
  have hle : o.hi = o.lo + o.size := rfl
  have hcell : (BitVec.ofNat 64 (o.hi - 1)).toNat = o.hi - 1 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rcases hnf o ho (BitVec.ofNat 64 (o.hi - 1)) (by rw [hcell]; omega) (by rw [hcell]; omega) with
    ⟨o0, ho0, -, -, -, h4⟩ | hf
  · have := hB o0 ho0
    rw [hcell] at h4
    omega
  · unfold Fresh at hf
    omega

/-- The facts that survive everything. -/
def PhI (PL C : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  (∃ o ∈ Γ, o.base = PL ∧ o.ty = Types.tPL) ∧ Aw.Below Γ q.hp ∧ SlObj Γ C (BitVec.ofNat 64 20)

theorem phI_step {PL C : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} (hord' : q'.Ordered) (hL : Layout Types.guestC q' Γ')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') (h : PhI PL C Γ q) : PhI PL C Γ' q' := by
  obtain ⟨⟨o, ho, hb, ht⟩, hB, hS⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := hext o ho
  exact ⟨⟨o', ho', hb'.trans hb, ht'.trans ht⟩, (below_nf hord' hL hnf hB).mono hm.1, slObj_ext hext hS⟩

/-- Fresh blocks at the current allocator. -/
def FBs (p0 : Ptrs) (bs : List (BitVec 64 × Nat)) (Γ : Gam) (q : Ptrs) : Prop :=
  ∀ b ∈ bs, Trie.FBlk p0 b.1 b.2 Γ q

theorem fbs_step {p0 : Ptrs} {bs : List (BitVec 64 × Nat)} {Γ Γ' : Gam} {q q' : Ptrs} (hq : q.Ordered)
    (hnf : NewFresh Γ Γ' q q) (hm : q.Mono q') (h : FBs p0 bs Γ q) : FBs p0 bs Γ' q' :=
  fun b hb => Trie.fblk_persist (h b hb) hq.2.1 hnf hm

/-- The first phase: every object lies below the header `H`, and the blocks `bs` lie above it. -/
structure EA (p0 : Ptrs) (PL C H : BitVec 64) (bs : List (BitVec 64 × Nat)) (ck : Mem → Prop) (Γ : Gam) (q : Ptrs)
    (m : Mem) (_g : LocalsH) : Prop where
  i : PhI PL C Γ q
  bh : Aw.Below Γ H.toNat
  p0h : p0.hp ≤ H.toNat
  al : H.toNat % 8 = 0
  top : H.toNat + 248 ≤ heapEnd
  fH : Trie.FBlk p0 H 248 Γ q
  fbs : FBs p0 bs Γ q
  abv : ∀ b ∈ bs, H.toNat + 248 ≤ b.1.toNat
  ck : ck m

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.phI_step
#print axioms InitECandidate.Solver.MemSafe.Exb.fbs_step
