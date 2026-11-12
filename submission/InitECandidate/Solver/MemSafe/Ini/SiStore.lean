import InitECandidate.Solver.MemSafe.Ini.SiAlloc

/-!
# `state_init`: stores into the raw blocks
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Trie
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

theorem ev_blkAddr {s : State σ} {g : MlS} {W : BitVec 64} (h : s.globals.lookup g = some (.val (.word W)))
    (c : Nat) : ev s (.op .add [gv g, cw c]) = some (.val (.word (W + BitVec.ofNat 64 c))) :=
  ev_add2 h (ev_cw s c)

/-- **A store to a cell outside `Γ`, unallocated at the entry** keeps the ghost heap invariant. -/
theorem step_store_gen {a : Act σ} (ha : ActOK a guestCtx) {kn kn' : Know}
    {kvf : List (MlS × BitVec 64 × FK)} {F : State σ → ValueHOL 64 → Prop} {ea e : ExpHOL 64}
    {x : BitVec 64}
    (haddr : ∀ s Γ q, Heap a Γ q (gz s) → SIc a kn kvf Γ q s → ∃ w, ev s ea = some (.val (.word w)) ∧
      ¬ InObj Γ w.toNat ∧ ¬ a.p0.Allocated w.toNat)
    (hev : ∀ s Γ q, SIc a kn kvf Γ q s → ev s e = some (.val (.word x)))
    (hnew : ∀ s Γ q w, Heap a Γ q (gz s) → SIc a kn kvf Γ q s → ev s ea = some (.val (.word w)) →
      SIc a kn' kvf Γ q { s with memory := Struct.upd s.memory w x }) :
    HoareG σ guestCtx (SI a kn kvf) (.store ea e) (NQr (SI a kn' kvf) F) := by
  refine nqr_store ?_
  intro s hs ⟨Γ, q, hext, hh, hS⟩ w v mem hw hv hst
  have hvx : v = .val (.word x) := Option.some.inj (hv.symm.trans (hev s Γ q hS))
  subst hvx
  obtain ⟨w0, hw0, hni, hna⟩ := haddr s Γ q hh hS
  have hww : w = w0 := AllocImpl.word_inj (hw.symm.trans hw0)
  subst hww
  have hmem' := Struct.store_word hst
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, -⟩ := Helpers.store1_mod hst1
  subst hmem'
  exact ⟨Γ, q, hext, heap_store_out ha hh hm hni hna, hnew s Γ q w hh hS hw⟩

theorem step_store_ws {a : Act σ} (ha : ActOK a guestCtx) {kn : Know}
    {kvf : List (MlS × BitVec 64 × FK)} {F : State σ → ValueHOL 64 → Prop} {e : ExpHOL 64} {x : BitVec 64}
    {k c : Nat} (hc : c = 8 * k) (hk : k < 5) (hW : ∃ W, kn.W = some W)
    (hev : ∀ s Γ q, SIc a kn kvf Γ q s → ev s e = some (.val (.word x)))
    (hfit : ∀ s Γ q, SIc a kn kvf Γ q s → Fits Γ (wsK k) x) :
    HoareG σ guestCtx (SI a kn kvf) (.store (.op .add [gv (nm "ws"), cw c]) e)
      (NQr (SI a { kn with wv := Function.update kn.wv k (some x) } kvf) F) := by
  subst hc
  refine step_store_gen ha ?_ hev ?_
  · intro s Γ q hh hS
    obtain ⟨W, hWk⟩ := hW
    obtain ⟨hlk, hbl⟩ := hS.2.1 W hWk
    have hcell := hbl.2 _ (blkF_cell (n := 40) (k := k) (heap_ord hh) hbl (by omega))
    exact ⟨W + BitVec.ofNat 64 (8 * k), ev_blkAddr hlk _, hcell.1, hcell.2.2⟩
  · intro s Γ q w hh hS hw
    obtain ⟨W, hWk⟩ := hW
    obtain ⟨hlk, hbl⟩ := hS.2.1 W hWk
    have hord := heap_ord hh
    have hww : w = W + BitVec.ofNat 64 (8 * k) := by
      rw [ev_blkAddr hlk] at hw
      exact (AllocImpl.word_inj hw).symm
    have hnw := blkF_nowrap hord hbl
    obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
    refine ⟨hL, hWs, hBs, fun k' v' hv' => ?_, fun k' v' hv' => ?_, hSs, hJs⟩
    · by_cases hkk : k' = k
      · rw [hkk] at hv' ⊢
        have hvx : x = v' := by simpa using hv'
        rw [← hvx]
        refine ⟨W, hWk, hk, ?_, hfit s Γ q ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩⟩
        show rd (Struct.upd s.memory w x) (W + BitVec.ofNat 64 (8 * k)) = x
        rw [← hww]; exact Struct.rd_upd_self _ _ _
      · simp only [Function.update_of_ne hkk] at hv'
        obtain ⟨W', hW', hk', hr, hf⟩ := hwv k' v' hv'
        have hWW : W' = W := Option.some.inj (hW'.symm.trans hWk)
        subst hWW
        refine ⟨W', hWk, hk', ?_, hf⟩
        show rd (Struct.upd s.memory w x) (W' + BitVec.ofNat 64 (8 * k')) = v'
        rw [Struct.rd_upd_ne (by rw [hww]; exact addCell_ne (by omega) (by omega) hkk)]
        exact hr
    · obtain ⟨B, hB, hk', hr, hf⟩ := hbv k' v' hv'
      obtain ⟨-, -, W'', hW'', hWB⟩ := hBs B hB
      have hWW : W'' = W := Option.some.inj (hW''.symm.trans hWk)
      subst hWW
      refine ⟨B, hB, hk', ?_, hf⟩
      show rd (Struct.upd s.memory w x) (B + BitVec.ofNat 64 (8 * k')) = v'
      have hBn := blkF_nowrap hord (hBs B hB).2.1
      have e1 : (B + BitVec.ofNat 64 (8 * k')).toNat = B.toNat + 8 * k' := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k') (by omega),
          Nat.mod_eq_of_lt (by omega)]
      have e2 : (W'' + BitVec.ofNat 64 (8 * k)).toNat = W''.toNat + 8 * k := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k) (by omega),
          Nat.mod_eq_of_lt (by omega)]
      rw [Struct.rd_upd_ne (fun h => by
        have := congrArg BitVec.toNat h
        rw [hww, e1, e2] at this
        omega)]
      exact hr

theorem step_store_bs {a : Act σ} (ha : ActOK a guestCtx) {kn : Know}
    {kvf : List (MlS × BitVec 64 × FK)} {F : State σ → ValueHOL 64 → Prop} {e : ExpHOL 64} {x : BitVec 64}
    {k c : Nat} (hc : c = 8 * k) (hk : k < 10) (hB : ∃ B, kn.B = some B)
    (hev : ∀ s Γ q, SIc a kn kvf Γ q s → ev s e = some (.val (.word x)))
    (hfit : ∀ s Γ q, SIc a kn kvf Γ q s → Fits Γ (bsK k) x) :
    HoareG σ guestCtx (SI a kn kvf) (.store (.op .add [gv (nm "bs"), cw c]) e)
      (NQr (SI a { kn with bv := Function.update kn.bv k (some x) } kvf) F) := by
  subst hc
  refine step_store_gen ha ?_ hev ?_
  · intro s Γ q hh hS
    obtain ⟨B, hBk⟩ := hB
    obtain ⟨hlk, hbl, -⟩ := hS.2.2.1 B hBk
    have hcell := hbl.2 _ (blkF_cell (n := 80) (k := k) (heap_ord hh) hbl (by omega))
    exact ⟨B + BitVec.ofNat 64 (8 * k), ev_blkAddr hlk _, hcell.1, hcell.2.2⟩
  · intro s Γ q w hh hS hw
    obtain ⟨B, hBk⟩ := hB
    obtain ⟨hlk, hbl, W0, hW0, hWB⟩ := hS.2.2.1 B hBk
    have hord := heap_ord hh
    have hww : w = B + BitVec.ofNat 64 (8 * k) := by
      rw [ev_blkAddr hlk] at hw
      exact (AllocImpl.word_inj hw).symm
    have hnw := blkF_nowrap hord hbl
    obtain ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩ := hS
    have e2 : (B + BitVec.ofNat 64 (8 * k)).toNat = B.toNat + 8 * k := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k) (by omega),
        Nat.mod_eq_of_lt (by omega)]
    refine ⟨hL, hWs, hBs, fun k' v' hv' => ?_, fun k' v' hv' => ?_, hSs, hJs⟩
    · obtain ⟨W', hW', hk', hr, hf⟩ := hwv k' v' hv'
      have hWW : W' = W0 := Option.some.inj (hW'.symm.trans hW0)
      subst hWW
      refine ⟨W', hW', hk', ?_, hf⟩
      show rd (Struct.upd s.memory w x) (W' + BitVec.ofNat 64 (8 * k')) = v'
      have hWn := blkF_nowrap hord (hWs W' hW').2
      have e1 : (W' + BitVec.ofNat 64 (8 * k')).toNat = W'.toNat + 8 * k' := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 8 * k') (by omega),
          Nat.mod_eq_of_lt (by omega)]
      rw [Struct.rd_upd_ne (fun h => by
        have := congrArg BitVec.toNat h
        rw [hww, e1, e2] at this
        omega)]
      exact hr
    · by_cases hkk : k' = k
      · rw [hkk] at hv' ⊢
        have hvx : x = v' := by simpa using hv'
        rw [← hvx]
        refine ⟨B, hBk, hk, ?_, hfit s Γ q ⟨hL, hWs, hBs, hwv, hbv, hSs, hJs⟩⟩
        show rd (Struct.upd s.memory w x) (B + BitVec.ofNat 64 (8 * k)) = x
        rw [← hww]; exact Struct.rd_upd_self _ _ _
      · simp only [Function.update_of_ne hkk] at hv'
        obtain ⟨B', hB', hk', hr, hf⟩ := hbv k' v' hv'
        have hBB : B' = B := Option.some.inj (hB'.symm.trans hBk)
        subst hBB
        refine ⟨B', hBk, hk', ?_, hf⟩
        show rd (Struct.upd s.memory w x) (B' + BitVec.ofNat 64 (8 * k')) = v'
        rw [Struct.rd_upd_ne (by rw [hww]; exact addCell_ne (by omega) (by omega) hkk)]
        exact hr

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.step_store_bs
