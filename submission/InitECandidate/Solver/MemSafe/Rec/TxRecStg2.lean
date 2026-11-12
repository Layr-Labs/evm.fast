import InitECandidate.Solver.MemSafe.Rec.TxRecStg

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the scalar stages (chain id, nonce, price, gas, to, value)

`BLs Ar A tt s`: the locals invariant at stage `s` for the transaction type `tt <= 4`
(`k = txrKst s tt`, `nfields = txrNfOf tt`).  `TxCS`: the callee facts.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)

variable {σ : Type} {X : Ctx 64}

def BLs (Ar A : BitVec 64) (tt s : Nat) : LocalsH → Prop :=
  txrBL Ar A (BitVec.ofNat 64 tt) (BitVec.ofNat 64 (txrNfOf tt)) (BitVec.ofNat 64 (txrKst s tt))

theorem bls_eq (Ar A : BitVec 64) {tt s k : Nat} (h : txrKst s tt = k) :
    BLs Ar A tt s = txrBL Ar A (BitVec.ofNat 64 tt) (BitVec.ofNat 64 (txrNfOf tt)) (BitVec.ofNat 64 k) := by
  unfold BLs; rw [h]

structure TxCS {σ : Type} (X : Ctx 64) (a : Act σ) : Prop where
  hC : X.code.lookup = guestCode
  hCb : a.Cb = Types.guestC
  hCC : a.C = Types.guestC
  hH : a.H = Hooks.guestHooksR
  word : CSumm σ X a.Cb a.H (nm "tx_scalar_word") txwSig []
  u256 : CSumm σ X a.Cb a.H (nm "tx_scalar_u256") txfSig []
  fixed : CSumm σ X a.Cb a.H (nm "tx_fixed_bytes") txfSig []
  toit : CSumm σ X a.Cb a.H (nm "tx_to_item") rlsSig []
  bitem : CSumm σ X a.Cb a.H (nm "tx_bytes_item") rlsSig []
  litem : CSumm σ X a.Cb a.H (nm "tx_list_item") rlsSig []
  rdf : CSumm σ X a.Cb a.H (nm "rlp_decode_fully") rlsSig []
  rls : CSumm σ X a.Cb a.H (nm "rlp_list_to_slices") rlsSig []
  mz : CSumm σ X a.Cb a.H (nm "memzero") Helpers.sigMemzero []
  alloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []
  hAS : AllocSpec σ X (nm "alloc") .heap
  acc : SumSpecA σ X a.Cb a.H (nm "decode_access_list") acSig (fun vs s _ => SlPre vs s)
    (fun _ _ _ _ => False) (fun vs _ _ r t Γ' => ∀ v, r = .returned v → AcRx vs Γ' t.memory v)
  bh : SumSpecA σ X a.Cb a.H (nm "decode_blob_hashes") bhSig (fun vs s _ => SlPre vs s)
    (fun _ _ _ _ => False) (fun vs _ _ r _ _ => ∀ v, r = .returned v → BhRx vs v)
  au : SumSpecA σ X a.Cb a.H (nm "decode_authorizations") auSig (fun vs s _ => SlPre vs s)
    (fun _ _ _ _ => False) (fun vs _ _ r _ Γ' => ∀ v, r = .returned v → AuRx vs Γ' v)

/-! ## Conditions -/

theorem cond_true {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : txrBL Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o T (BitVec.ofNat 64 c) = true) :
    ev s (.cmp o txrT (cw c)) = some (.val (.word 1)) := by
  unfold txrT; rw [ev_cmp (ev_lw (bl_t hL)) (ev_cw _ c), if_pos h]

theorem cond_false {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : txrBL Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o T (BitVec.ofNat 64 c) = false) :
    ev s (.cmp o txrT (cw c)) = some (.val (.word 0)) := by
  unfold txrT; rw [ev_cmp (ev_lw (bl_t hL)) (ev_cw _ c), if_neg (by simp [h])]

theorem cond_true' {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : txrBL Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 c) T = true) :
    ev s (.cmp o (cw c) txrT) = some (.val (.word 1)) := by
  unfold txrT; rw [ev_cmp (ev_cw _ c) (ev_lw (bl_t hL)), if_pos h]

theorem cond_false' {s : State σ} {Ar A T NF K : BitVec 64} (o : Cmp) (c : Nat)
    (hL : txrBL Ar A T NF K s.locals)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL o (BitVec.ofNat 64 c) T = false) :
    ev s (.cmp o (cw c) txrT) = some (.val (.word 0)) := by
  unfold txrT; rw [ev_cmp (ev_cw _ c) (ev_lw (bl_t hL)), if_neg (by simp [h])]

theorem txrCmpT : ∀ tt : Nat, tt ≤ 4 →
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual (BitVec.ofNat 64 tt) (BitVec.ofNat 64 0) =
      decide (tt ≠ 0)) ∧
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal (BitVec.ofNat 64 tt) (BitVec.ofNat 64 4) =
      decide (tt = 4)) ∧
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower (BitVec.ofNat 64 1) (BitVec.ofNat 64 tt) =
      decide (tt ≤ 1)) ∧
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notLower (BitVec.ofNat 64 tt) (BitVec.ofNat 64 3) =
      decide (3 ≤ tt)) ∧
    (Flapjack.Compiler.Encoders.Asm.wordCmpHOL .equal (BitVec.ofNat 64 tt) (BitVec.ofNat 64 3) =
      decide (tt = 3)) := by decide

theorem hoareG_dqL {a : Act σ} {P : State σ → Prop} {Ar : BitVec 64} {n : Nat} {c : ProgHOL 64}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    (h : HoareG σ X P c (DQ a Ar n L E)) (hL : ∀ m, L m → L' m) : HoareG σ X P c (DQ a Ar n L' E) :=
  hoareG_conseq h (fun _ _ x => x)
    (fun r t _ _ hq => ⟨fun hr => di_mono hL (fun _ _ _ _ x => x) (hq.1 hr), hq.2⟩)

theorem hoareG_diL {a : Act σ} {Ar : BitVec 64} {n : Nat} {c : ProgHOL 64}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (DI a Ar n L E) c Q) (hL : ∀ m, L' m → L m) : HoareG σ X (DI a Ar n L' E) c Q :=
  hoareG_pre h (fun s _ hD => di_mono hL (fun _ _ _ _ x => x) hD)

/-- `k = c` -/
theorem txr_kset {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (c : Nat) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (.assign .local (nm "k") (cw c))
      (DQ a Ar 400 (txrBL Ar A T NF (BitVec.ofNat 64 c)) E) := by
  refine hoareG_assignDI ha.hH ?_
  intro s hs hL v hv
  rw [ev_cw] at hv
  cases hv
  exact bl_setk _ hL

theorem txr_stw {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (f : Nat) (hf : f < 50) (hfn : f ∉ txFacts) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrSt (8 * f) (lv (nm "w")))
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  refine txr_st ha hAr hS (8 * f) 1 (by omega) (by omega) ?_ ?_
  · intro g hg
    rw [show 8 * f / 8 = f by omega]
    by_contra hc
    exact hfn (by
      have : g = f := by omega
      subst this; exact hg)
  · intro s hs hL v hv
    obtain ⟨W, hW⟩ := bl_w hL
    rw [ev_lw hW] at hv; cases hv; simp [flattenHOL]

theorem txr_stv {a : Act σ} (ha : ActOK a X) {Ar A T NF K : BitVec 64}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hS : StoreKeep Ar E) (f : Nat) (hf : f + 4 ≤ 50) (hfn : ∀ g ∈ txFacts, g < f ∨ f + 4 ≤ g) :
    HoareG σ X (DI a Ar 400 (txrBL Ar A T NF K) E) (txrSt (8 * f) (lv (nm "v")))
      (DQ a Ar 400 (txrBL Ar A T NF K) E) := by
  refine txr_st ha hAr hS (8 * f) 4 (by omega) (by omega) ?_ ?_
  · rw [show 8 * f / 8 = f by omega]; exact hfn
  · intro s hs hL v hv
    obtain ⟨a', b', c', d', hV⟩ := bl_v hL
    rw [ev_lv, hV] at hv; cases hv; simp [wv, flattenHOL]

end InitECandidate.Solver.MemSafe.Rec
