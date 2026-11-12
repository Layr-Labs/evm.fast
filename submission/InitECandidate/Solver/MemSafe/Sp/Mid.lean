import InitECandidate.Solver.MemSafe.Sp.Pre

/-!
# Sp: the middle of `payload_header` with cost (mirror of `Exb.ph_mid`): the size check, the transaction root
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Sp
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Exb

variable {σ : Type}

def cBrl : Nat := 1701411834604692319991650927846726041889

def bMidE (Bbmi Bwd : Nat) : Nat := 1 + cBrl + (max 0 0 + ((1 + Bbmi + 0) + Bwd))

section body
variable {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
  (haH : a.H = Hooks.guestHooksR (σ := σ)) (hfp : a.p0.fp = heapEnd) (hsp : a.p0.sp = scratchEnd)
  (hgr : a.sg.grows = true) (hPl : HypPlS σ) (hWd : HypWdFresh σ)
include ha haC hCb haH hfp hsp hgr hWd hPl

/-- **The middle**: the size check, the transaction root, and on to the withdrawals. -/
theorem ch_mid {Bbmi Bwd : Nat} (hBmiC : Eb.HypBmiCost σ Bbmi) (hgw : a.sg.gw = []) (hjr : Frames.JrNZ a.s0)
    (hev : Eb.EvCc a.s0) {PL C H TXR WR RH BH : BitVec 64} (hPE : PlE a PL) {L2 : LocalsH → Prop} {E2 : Gam → Ptrs → Mem → LocalsH → Prop}
    (hwd : CH (PJ a (Trie.LV (phKvB PL H WR RH BH)) (EB a.p0 PL C H WR RH BH)) phWd
      (PP a (fun _ => False) E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) Bwd) :
    CH (PJ a (Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH))
        (fun Γ q m g => EB a.p0 PL C H WR RH BH Γ q m g ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)) phMid
      (PP a L2 E2 (PhRx a.p0 a.s0.memory PL C H WR RH BH)) (bMidE Bbmi Bwd) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hTS := Helpers.tagSlots_guestC
  have hAG := Annot.drv_allocG
  have hT := Aw.domBelow_guestCtx
  have hBrl := Aw.awSpec_block_rlp_length (σ := σ) (C := Types.guestC) (H := Hooks.guestHooksR (σ := σ)) hX hF.hH hTS hAG
    (Aw.awSpec_encode_header hX hF.hal hT hF.hH hTS hAG
      (Aw.awSpec_rlp_put_u256 hX hF.hal hT hF.hH hTS hAG Ra.toBeMin_C))
  have hBmi : SumSpecA σ guestCtx a.Cb a.H (nm "build_mpt_indexed") Trie.bmiSig Trie.BmiPre
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ Γ _ _ Γ' => Γ' = Γ) := by
    rw [hCb, haH]
    exact sumSpecA_mono Trie.sumSpecA_build_mpt_indexed (fun _ _ _ h => h) (fun _ _ _ _ h => h.elim)
      (fun _ _ _ _ _ _ h => h)
  unfold phMid
  refine ch_decCallAW ha haC hCb haH hfp hsp hgr hBrl (by simp) (funSpec_true _)
    (hc := Wire.calleeCost_guest (f := nm "block_rlp_length") (B := cBrl) rfl)
    (L1 := fun _ => Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH))
    (E1 := fun _ Γ q m g => EB a.p0 PL C H WR RH BH Γ q m g ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat)
    (L2 := fun _ => False) (fun _ _ _ _ h => h.1.i.2.1) (fun _ _ _ _ _ _ _ _ _ _ => trivial) ?_
    (fun s st v hL _ => Trie.lv_set (s := { st with locals := s.locals }) hL (by apply ivFresh_of; simp only [phKvB, List.map_cons, List.map_nil]; decide) v)
    ?_ (fun _ _ _ h => h.elim)
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hh hh' hext hnf hmo hB' hmod hPost hLc _
    have hord := heap_ord hh
    exact ⟨Γ', ext_refl _, hh', eb_step hord (heap_ord hh') (Ra.layout_heap haC hh') hext hnf hmo
      (fun x hni x1 x2 _ => keep_of_aw hord (Ra.layout_heap haC hh) hmod hni x1 x2) hE.1,
      Trie.fblk_persist hE.2.1 hord.2.1 hnf hmo, hE.2.2⟩
  intro _
  refine ch_seq (ch_leaf pp_iteRaise (cost_ite (cost_raise _ _) cost_skip)) ?_
  have hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s guestCtx →
      Trie.LV ((nm "txr", Wv TXR) :: phKvB PL H WR RH BH) s.locals → Heap a Γ q s →
      (EB a.p0 PL C H WR RH BH Γ q s.memory s.globals ∧ Trie.FBlk a.p0 TXR 32 Γ q ∧ H.toNat + 248 ≤ TXR.toNat) →
      ∀ vs, evs s [.load .one (.op .add [lv (nm "pl"), cw 32]), .load .one (.op .add [lv (nm "pl"), cw 40]), lv (nm "txr")] = some vs →
      (ArgsOK a.Cb Γ q Trie.bmiSig.params vs ∧ (∀ x, ArgCells Trie.bmiSig.params vs x → a.Foot x) ∧
        ∀ callee, Trie.BmiPre vs (callEntryStateHOLFinite s callee) Γ) ∧
      ∃ A N O : BitVec 64, vs = [Wv A, Wv N, Wv O] ∧ N.toNat < 2 ^ 50 := by
    intro s Γ q _ hL hh hE vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    have hmemP : (nm "pl", Wv PL) ∈ (nm "txr", Wv TXR) :: phKvB PL H WR RH BH := by simp [phKvB]
    have e1 := iv_load hL hmemP h1
    have e2 := iv_load hL hmemP h2
    rw [Trie.lv_ev hL (x := nm "txr") (v := Wv TXR) (by simp)] at h3
    cases h3
    subst e1 e2
    obtain ⟨o, ho, hb, ht⟩ := hE.1.i.1
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by
      have := hh.1
      rwa [haC, haH] at this
    obtain ⟨hIv, -, -⟩ := hPl Γ s o hG ho ht
    rw [txF_eq hb 4, txF_eq hb 5] at hIv
    have hLy := Ra.layout_heap haC hh
    obtain ⟨hb1, hb2⟩ := Trie.fblk_sub hE.2.1 (off := 0) (n := 32) (by omega) (by omega)
    refine ⟨⟨Ra.ao_aab _ _ TXR (by rw [hCb]; exact hb1), fun x hx => Or.inr (Or.inr (Or.inl (hb2 x (Ra.ac_aab hx)).2.1)),
      fun callee => ⟨_, _, TXR, rfl, q, hh.2.1, fun j hj => ?_⟩⟩, _, _, _, rfl, slaObj_bound hIv.1⟩
    rw [ivMul168 j, ivMul16 j]
    obtain ⟨o1, ho1, ht1, l1, l2⟩ := sla_obj hIv.1 hj (d := 0) (by omega)
    obtain ⟨o2, ho2, ht2, l3, l4⟩ := sla_obj hIv.1 hj (d := 8) (by omega)
    rw [Nat.add_zero] at l1 l2
    exact ⟨⟨Trie.alloc_of_obj hLy ho1 l1 l2, Trie.notInKept hLy ho1 (by rw [ht1]; decide) l1 l2⟩,
      ⟨Trie.alloc_of_obj hLy ho2 l3 l4, Trie.notInKept hLy ho2 (by rw [ht2]; decide) l3 l4⟩, Or.inr (hIv.2 _ hj)⟩
  refine ch_seq (ch_bmi ha hBmiC haC haH hgw hjr hev
    (pp_call ha hBmi (funSpec_true _) (by simp [Trie.bmiSig]) (fun _ => hgr)
      (E' := EB a.p0 PL C H WR RH BH) (fun s Γ q hs hL hh hE vs hvs => (hargs s Γ q hs hL hh hE vs hvs).1) ?_)
    (fun s Γ q hs hL hh hE vs hvs => by
      obtain ⟨⟨hA, -, hpb⟩, A, N, O, hv, hN⟩ := hargs s Γ q hs hL hh hE vs hvs
      rw [hCb] at hA
      exact ⟨A, N, O, hv, hN, hA, hpb⟩)) ?_
  · intro s st vs callee v Γ Γ' q q' _ hL hvs hE hLc hQ hh hext hh' hmo hnf hnfp hmd
    subst hQ
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
    rw [evs_nil] at hvs3
    cases hvs3
    rw [Trie.lv_ev hL (x := nm "txr") (v := Wv TXR) (by simp)] at h3
    cases h3
    refine eb_step (heap_ord hh) (heap_ord hh') (Ra.layout_heap haC hh') hext (newFresh_refl _ _ _) hmo
      (fun x hni x1 x2 hout => keep_of_mod haC hCb hh hmd hni x1 x2 fun hac => ?_) hE.1
    obtain ⟨o1, o2⟩ := ovl_in (Ra.ac_aab hac) hE.2.1.1
    have := hE.2.2
    omega
  refine ch_pre hwd fun s _ h => ?_
  obtain ⟨hL, Γ, q, he, hh, hE⟩ := h
  exact ⟨Trie.lv_mono hL fun p hp => List.mem_cons_of_mem _ hp, Γ, q, he, hh, hE⟩

end body

end InitECandidate.Solver.MemSafe.Sp
