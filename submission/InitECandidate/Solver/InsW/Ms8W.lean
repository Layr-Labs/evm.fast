import InitECandidate.Solver.InsW.Cost
import InitECandidate.Solver.Band7.Ms8

/-!
# `mpt_set` with a key of at most 32 bytes: the windowed insertion price

`ms8_condCostW` is the accepted `ms8_condCostAt` (`Band7/Ms8.lean`) with the extra entry
condition `klen ≤ 32` (`MsPre8K`). Then `mpt_nibble_key` returns a nibble key of length `64`
or `2 klen ≤ 64` (`MnkRet`), the insertion starts at level `0`, and the conditional
insertion cost `insert_costW` applies. The delete branch is unchanged.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.InsW
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd nullMax AllocOK rd Gam
  Obj Fits InObj G Hooks Sig SumCore Ext CondCost ArgsOK ArgCells WCell ProtCell FoldOK CSumm)
open InitECandidate.Solver.MemSafe.Types (guestC nodeU tB40)
open InitECandidate.Solver.Band4 InitECandidate.Solver.Band7

variable {σ : Type}

abbrev priceW : Nat := (insMbW LwMax + 1) * (TightTrieInsert.stepPrice 3 0 0 CompactTrieCalls.leafPrice
  CommonPrefixAddress.price CompactTrieCalls.splitPrice 3 + 1)

theorem insert_cost_guest : Inv.CalleeCostP σ guestCtx (nm "_mpt_insert_node") InsPreW priceW :=
  insert_costW guestCtx_code guestCtx_bounded
    (TightTrieInsert.iteration_cost (CompactCostReplay.accepted (by decide_cbv))
      (CompactCostReplay.accepted (by decide_cbv)) (CompactCostReplay.accepted (by decide_cbv))
      CompactTrieCalls.leaf_cost CommonPrefixAddress.calleeCost CompactTrieCalls.split_cost
      (CompactCostReplay.accepted (by decide_cbv)))
    (calleeEscFree_of_ef (Shards.finalState_sound_guest (σ := σ)).2.1 (by decide_cbv))
    (calleeEscFree_of_ef (Shards.finalState_sound_guest (σ := σ)).2.1 (by decide_cbv))

/-- `MsPre8` and a key of at most 32 bytes. -/
def MsPre8K (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  MsPre8 vs s Γ ∧ ∃ kl : BitVec 64, vs[2]? = some (.val (.word kl)) ∧ kl.toNat ≤ 32

theorem ms8_condCostW {H : Hooks σ} (hF : FoldOK σ guestCtx guestC H)
    (hK : CSumm σ guestCtx guestC H (nm "keccak256") (MemSafe.WaveHelpers.sigKeccak 32 false) []) :
    CondCost σ guestCtx guestC H (nm "mpt_set") msSig MsPre8K (msPriceAt priceW) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_ms hl
  unfold msBody msPriceAt
  refine Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest (f := nm "mpt_nibble_key")
      (B := bMnk) rfl)) (fun _ _ _ _ _ _ => trivial)
    ((MemSafe.MptH.sumSpec_mpt_nibble_key hF hK).and ret_mpt_nibble_key) ?_
  rintro s _ ⟨hloc, Γ, p, hG, hp, -, ⟨m, key, klen, vptr, vlen, rfl, hrec, hkl2⟩, kl, hkl, hkl32⟩ vs' hvs'
    callee' v st ⟨hS, hRet⟩ _ _
  have hm : s.locals.lookup (nm "m") = some (.val (.word m)) := by
    rw [hloc]; exact (hbind 0 (by decide) (by simp)).1
  have hkey : s.locals.lookup (nm "key") = some (.val (.word key)) := by
    rw [hloc]; exact (hbind 1 (by decide) (by simp)).1
  have hklen : s.locals.lookup (nm "klen") = some (.val (.word klen)) := by
    rw [hloc]; exact (hbind 2 (by decide) (by simp)).1
  have hvp : s.locals.lookup (nm "vptr") = some (.val (.word vptr)) := by
    rw [hloc]; exact (hbind 3 (by decide) (by simp)).1
  have hvl : s.locals.lookup (nm "vlen") = some (.val (.word vlen)) := by
    rw [hloc]; exact (hbind 4 (by decide) (by simp)).1
  rw [evs_cons (ev_lw hm) (evs_cons (ev_lw hkey) (evs_cons (ev_lw hklen) evs_nil))] at hvs'
  cases hvs'
  -- the entry state of `mpt_nibble_key`
  have hG1 : G guestC H Γ (callEntryStateHOLFinite s callee') :=
    MemSafe.G_congr (s := s) (t := callEntryStateHOLFinite s callee') hF.hH rfl rfl rfl rfl hG
  have hp1 : ptrsOf (callEntryStateHOLFinite s callee') = some p := by
    rw [mnk_ptrs (t := callEntryStateHOLFinite s callee') (s := s) rfl]; exact hp
  obtain ⟨Γ', p1, p', hcore, -⟩ := hS (mnk_good_ret v) (by simp [MemSafe.Abortive]) Γ hG1
    ⟨p, hp1, mnk_argsOK rfl⟩ (fun KL h => by cases h; exact hkl2)
  have hp1e : p1 = p := by
    have := hcore.1; rw [hp1] at this; cases this; rfl
  subst hp1e
  have hG' : G guestC H Γ' st := hcore.2.2.2.2.2.1
  have hext : Ext Γ Γ' := hcore.2.2.2.1
  obtain ⟨nb, L, rfl, hbe, hnb8, -, hnbL, hsec1, hsec2, hnib⟩ :=
    hRet m key klen rfl (mnkIn_of_G hG1 hkl2) v rfl
  -- the root slot is kept
  obtain ⟨pr, hpr, hm8, hm1, hm16, hmno, -, hroot⟩ := hrec
  rw [hp] at hpr
  cases hpr
  have hkeep : st.memory m = s.memory m :=
    mnk_cell_kept hcore hG1 hm1 (by omega) hmno
  have hroot' : Fits Γ' nodeU (rd st.memory m) := by
    unfold rd; rw [hkeep]; exact MemSafe.fits_ext hext hroot
  -- the continuation
  refine Inv.costP_dec fun t _ ht w hw _ => ?_
  subst ht
  have hmt : (setVarHOLFinite (nm "nk") (.rStruct [.val (.word nb), .val (.word L)])
      { st with locals := s.locals }).locals.lookup (nm "m") = some (.val (.word m)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hm
  have hw' := Band2.ev_lds_lv hmt hw
  subst hw'
  have e0 : m + BitVec.ofNat 64 0 = m := by simp
  rw [e0]
  refine Inv.costP_seq (R := fun _ => True) (Inv.costP_ite ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_store _ _) (cost_return _)))
  · -- delete
    refine Inv.costP_call (Bh := 0) Band2.mpt_delete_node_costP ?_ (by intro _ _ _ _ h; cases h)
    rintro u _ ⟨hu, cw', hc, hc0⟩ vs2 hvs2 callee2
    have hl_root : u.locals.lookup (nm "root") = some (.val (.word (rd st.memory m))) := by
      rw [hu]; exact lk_set_self _ _ _
    have hl_nk : u.locals.lookup (nm "nk") = some (.rStruct [.val (.word nb), .val (.word L)]) := by
      rw [hu, lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    have hl_other : ∀ x, x ≠ nm "root" → x ≠ nm "nk" → u.locals.lookup x = s.locals.lookup x := by
      intro x h1 h2
      rw [hu, lk_set_ne _ _ (Ne.symm h1), lk_set_ne _ _ (Ne.symm h2)]
    have hnkv : ev u (lv (nm "nk")) = some (.rStruct [.val (.word nb), .val (.word L)]) := hl_nk
    rw [evs_cons (ev_lw hl_root) (evs_cons (ev_rfield hnkv 0) (evs_cons (ev_rfield hnkv 1)
      (evs_cons (ev_cw _ 0) evs_nil)))] at hvs2
    cases hvs2
    have hum : (callEntryStateHOLFinite u callee2).memory = st.memory := by rw [hu]; rfl
    have hug : (callEntryStateHOLFinite u callee2).globals = st.globals := by rw [hu]; rfl
    have hud : (callEntryStateHOLFinite u callee2).memaddrs = st.memaddrs := by rw [hu]; rfl
    have hub : (callEntryStateHOLFinite u callee2).be = st.be := by rw [hu]; rfl
    have hKN := keyNib_of_nib hnbL hnib
    have hKN' : Mpt.KeyNib (callEntryStateHOLFinite u callee2).be (callEntryStateHOLFinite u callee2).memory nb L
        (BitVec.ofNat 64 0) := by
      rw [hum, hub, hbe]; exact hKN
    exact Band.delPre_of_G (MemSafe.G_congr hF.hH hum hug hud hub hG') hroot' hKN'
  · -- insert
    have hkl' : kl = klen := by
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq,
        ValueHOL.val.injEq, HolWordLab.word.injEq] at hkl
      exact hkl.symm
    subst hkl'
    have hL64 : L.toNat ≤ 64 := by
      by_cases h0 : rd (callEntryStateHOLFinite s callee').memory (m + BitVec.ofNat 64 8) = 0
      · have := hsec2 h0; omega
      · have := hsec1 h0; omega
    refine Inv.costP_call (Bh := 0) insert_cost_guest ?_ (by intro _ _ _ _ h; cases h)
    rintro u _ ⟨hu, hc⟩ vs2 hvs2 callee2
    have hl_nk : u.locals.lookup (nm "nk") = some (.rStruct [.val (.word nb), .val (.word L)]) := by
      rw [hu, lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    have hnkv : ev u (lv (nm "nk")) = some (.rStruct [.val (.word nb), .val (.word L)]) := hl_nk
    obtain ⟨va, vs3, rfl, -, hvs3⟩ := evs_cons_inv hvs2
    obtain ⟨vb, vs4, rfl, -, hvs4⟩ := evs_cons_inv hvs3
    obtain ⟨vc, vs5, rfl, hc5, hvs5⟩ := evs_cons_inv hvs4
    obtain ⟨vd, vs6, rfl, hd6, -⟩ := evs_cons_inv hvs5
    rw [ev_rfield hnkv 1] at hc5
    rw [ev_cw] at hd6
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hc5 hd6
    subst hc5 hd6
    refine ⟨L, BitVec.ofNat 64 0, rfl, rfl, ?_⟩
    simpa using hL64

theorem ms8_condCostW_R :
    CondCost σ guestCtx guestC (MemSafe.Hooks.guestHooksR (σ := σ)) (nm "mpt_set") msSig MsPre8K
      (msPriceAt priceW) :=
  ms8_condCostW MemSafe.Rec.foldOK_guestR
    (MemSafe.WaveHelpers.csumm_keccak256 MemSafe.Rec.foldOK_guestR Mpt.Leaves.domTop_guestCtx (le_refl _) false)

#print axioms ms8_condCostW_R

end InitECandidate.Solver.InsW
