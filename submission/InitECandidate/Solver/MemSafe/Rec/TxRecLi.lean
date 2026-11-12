import InitECandidate.Solver.MemSafe.Rec.TxRecSet

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: the `tx_list_item` call (used for the access list, blob hashes, authorizations)

`txr_litem`: `var rn = tx_list_item(arr, karg); k` -- the result `<b, c>` lies in the payload
`[Pt, Pt + Nt)` (`AlFact`), so it is a valid `SlPre` argument of a sub-decoder.
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

def AlFact (a : Act σ) (Pt Nt : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ b c : BitVec 64, v = .rStruct [Wd b, Wd c] ∧ heapBase ≤ b.toNat ∧ b.toNat + c.toNat ≤ a.p0.hp ∧
    c.toNat < 2 ^ 28 ∧ LocIn Pt Nt b c.toNat

def LsN (Ar A : BitVec 64) (tt s : Nat) (rn : MlS) (v : ValueHOL 64) : LocalsH → Prop :=
  fun m => BLs Ar A tt s m ∧ m.lookup rn = some v

theorem txr_litem {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) {Ar A cnt Pt Nt : BitVec 64}
    (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd) {b27 b35 : Bool} (tt s : Nat) (rn : MlS)
    (hrn : rn ∉ txrNames) (karg : ExpHOL 64) (I : Nat) (hI : I < cnt.toNat)
    (hkarg : ∀ s' : State σ, BLs Ar A tt s s'.locals →
      ev s' karg = some (.val (.word (BitVec.ofNat 64 I))))
    {L2 : ValueHOL 64 → LocalsH → Prop} {E2 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {Lf : LocalsH → Prop} {Ef : Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    (hk : ∀ v, HoareG σ X (DI a Ar 400 (LsN Ar A tt s rn v)
      (withP (AlFact a Pt Nt v) (ET2 a Ar A cnt Pt Nt b27 b35))) k (DQ a Ar 400 (L2 v) (E2 v)))
    (hresL : ∀ (m0 m : LocalsH) (v : ValueHOL 64), BLs Ar A tt s m0 → L2 v m →
      Lf (m.resVarEq (rn, m0.lookup rn)))
    (hresE : ∀ v Γ q mem g, E2 v Γ q mem g → Ef Γ q mem g) :
    HoareG σ X (DI a Ar 400 (BLs Ar A tt s) (ET2 a Ar A cnt Pt Nt b27 b35))
      (.decCall rn (.comb [.one, .one]) (nm "tx_list_item") [txrArr, karg] k) (DQ a Ar 400 Lf Ef) := by
  have hps : ∀ pt ∈ rlsSig.params, pt = .any := by simp [rlsSig]
  refine hoareG_decCallDQ ha hcs.litem (funSpec_tx_list_item hcs.hC) (by simp [rlsSig])
    (by simp [rlsSig]) (L' := fun v => LsN Ar A tt s rn v)
    (E' := fun v => withP (AlFact a Pt Nt v) (ET2 a Ar A cnt Pt Nt b27 b35)) (L2 := L2) (E2 := E2)
    (Lf := Lf) (Ef := Ef) ?_ ?_ ?_ hk hresL hresE
  · intro s' hs hL Γ q he hh hB hn hE vs hvs
    exact ⟨argsOK_any hps (by rw [evs_len2 hvs]; simp [rlsSig]),
      fun x hx => absurd hx (argCells_any hps)⟩
  · intro s' st v hL hsh
    exact ⟨bl_set (s := ({ st with locals := s'.locals } : State σ)) hrn v hL, lk_set_self _ _ _⟩
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨b, c, rfl⟩ := rstruct_of_shape hsh
    unfold txrArr at hvs
    rw [evs_cons (ev_lw (bl_arr hL)) (evs_cons (hkarg s' hL) evs_nil)] at hvs
    cases hvs
    obtain ⟨hz, hfz, hsin, hP, hN, hA, hdj⟩ := hE
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hso : SlotOut s'.memory A (BitVec.ofNat 64 I) b c :=
      hLc _ rfl q hpe (heap_ord hh) trivial A (BitVec.ofNat 64 I) b c rfl rfl
    have h4 := ha.hord0.2.1
    unfold heapEnd at h4
    obtain ⟨hl1, hl2, hl3⟩ := slot_loc hsin hI (by unfold heapEnd; omega) hso
    refine ⟨Γ', q', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, ?_⟩
    refine ⟨et2_call hcs.hCb b27 b35 hAr rlsSig _ Γ Γ' q q' s' st s'.globals st.globals co
      (fun x hx => argCells_any hps hx) hB ⟨hz, hfz, hsin, hP, hN, hA, hdj⟩, b, c, rfl, by omega, by omega, ?_,
      And.intro hl1 hl2⟩
    unfold heapBase heapEnd at *
    omega

end InitECandidate.Solver.MemSafe.Rec
