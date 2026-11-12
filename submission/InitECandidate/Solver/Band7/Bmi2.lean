import InitECandidate.Solver.Band7.Bmi1

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false
set_option cbv.warning false

/-!
# `build_mpt_indexed`: the loop body and the loop (Band7)
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

/-- The loop body at a fixed `i = I < n`. -/
theorem c_body {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {I M MK A N OUT : BitVec 64} (hI : I.toNat < N.toNat) :
    Inv.CostP σ guestCtx (GI a (Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT)) (EL a A N M))
      bmiLoopBody bBody := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hRW : SumSpecA σ guestCtx a.Cb a.H (nm "rlp_encode_word") sigRlpEncodeWord (fun _ s Γ => ReqOK [] s Γ)
      (fun _ s Γ x => CapPW [] s Γ x) (fun _ _ _ _ _ _ => True) := by
    rw [hCb, haH]; exact csumm_of_summ (summ_rlp_encode_word hF.hH tagSlots_guestC hF.hX hF.hal)
  have hev : ∀ (s : State σ) (D : BitVec 64), Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) s.locals →
      s.globals.lookup (nm "mpt_key_scratch") = some (.val (.word D)) →
      evs s [gv (nm "mpt_key_scratch"), lv (nm "i")] = some [.val (.word D), .val (.word I)] :=
    fun s D hL hD => evs_cons hD (evs_cons (lv_ev hL (List.mem_cons_self ..)) evs_nil)
  unfold bmiLoopBody bBody
  refine cq_decCallX ha (cs := []) (capSub_nil _) hRW (footRet_rlp_encode_word hF.hX hF.hal)
    (by simp [sigRlpEncodeWord]) (fun h => by simp [sigRlpEncodeWord] at h)
    (L1 := fun v m => Trie.LV ((nm "klen", v) :: (nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) m)
    (E1 := fun v Γ q mm => EL a A N M Γ q mm ∧ ∃ KL : BitVec 64, v = .val (.word KL) ∧ KL.toNat ≤ 9)
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_rlp) (fun _ _ _ _ _ _ => trivial)
    ?_ ?_ ?_ ?_
  · intro s Γ q hs hL hh hE vs hvs
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
    obtain ⟨D, o, ho, hD, hb, ht⟩ := key_obj hG
    rw [hev s D hL hD] at hvs
    cases hvs
    have hord := MemSafe.heap_ord hh
    have hLy := layout_of_heap haC hh
    refine ⟨argsOK_bw (fun c hc => ?_), fun x hx => ?_, fun callee c hc => by simp at hc⟩
    · obtain ⟨k, -, hk, hsc, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact hc)
      exact Or.inl ⟨o, ho, k, hk, by rw [hCb]; exact hsc, rfl⟩
    · obtain ⟨k, -, hk, hsc, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact argCells_bw hx)
      exact foot_of_scellK ha haC hh ho hk hsc
  · intro s st vs callee v Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    have hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s := by rw [← haC, ← haH]; exact hh.1
    obtain ⟨D, o, ho, hD, hb, ht⟩ := key_obj hG
    rw [hev s D hL hD] at hvs
    cases hvs
    have hord := MemSafe.heap_ord hh
    have hLy := layout_of_heap haC hh
    have hin : ∀ y, ArgCells sigRlpEncodeWord.params [.val (.word D), .val (.word I)] y → InObj Γ y.toNat := by
      intro y hy
      obtain ⟨k, -, hk, -, rfl⟩ := key_cell hord hLy ho ht (by rw [hb]; exact argCells_bw hy)
      exact cell_in hord hLy ho hk
    obtain ⟨h8, h16, -, hlive⟩ := key_live hLy ho ht
    have hqh := hord.2.1
    refine ⟨scrOld_of_nf0 (layout_of_heap haC hh') (hnfp rfl), fun hsh => ⟨⟨?_, ?_⟩, ?_⟩⟩
    · refine hrecU_step hCb hmd hext hnf hmo hord (MemSafe.heap_ord hh') hLy hE.1 fun y hy => ?_
      have hy := hin y hy
      exact ⟨fun e => hE.1.1.2.2.2.1 (e ▸ hy), fun e => hE.1.1.2.2.2.2.1 (e ▸ hy)⟩
    · exact arrE_step hCb hmd hext hnf hh.2.2.1 hmo hord (MemSafe.heap_ord hh') hLy hE.2
        fun c _ hcO hcArg => hcO (hin c hcArg)
    · have hpre : WPre [.val (.word D), .val (.word I)] := by
        refine ⟨D, rfl, fun W hW => ?_⟩
        simp only [argW, MemSafe.wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hW
        have hWI : W = I := hW.symm
        rw [hWI]
        have := (wordLen_le I.isLt).2
        have he : heapEnd ≤ scratchEnd := by decide
        unfold Obj.lo at hlive
        rw [hb] at hlive
        omega
      obtain ⟨-, -, hret'⟩ := hLc (by simp [Good]) hpre
      have hw := hret' v rfl I rfl
      refine ⟨BitVec.ofNat 64 (wordLen I.toNat), hw, ?_⟩
      have := (wordLen_le I.isLt).2
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      exact this
  · intro s st v hL hsh
    exact lv_new (s := { st with locals := s.locals }) hL kvI_fresh v
  · intro v s hs ⟨hL, Γ, q, he, hh, hsc, hE, KL, hv, hKL⟩ hg
    subst hv
    exact c_set ha haC hCb haH hgr hcI hI hKL s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg

def bLoop : Nat := (2 ^ 64 + 1) * (bBody + 1)

/-- **The loop.** -/
theorem c_loop {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC) (hCb : a.Cb = Types.guestC)
    (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true) (hcI : capSub insCaps a.caps = true)
    {M MK A N OUT : BitVec 64} :
    Inv.CostP σ guestCtx (GI a (fun m => ∃ I : BitVec 64, Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) m)
        (EL a A N M)) bmiLoop bLoop := by
  have hIN : ∀ (s : State σ) (I : BitVec 64), Trie.LV ((nm "i", ValueHOL.val (.word I)) :: Trie.kvB M MK A N OUT) s.locals →
      CondTrue s (.cmp .lower (lv (nm "i")) (lv (nm "n"))) → I.toNat < N.toNat := by
    intro s I hL hc
    exact Struct.cmp_lower_true (cmp_true' (lv_ev hL (List.mem_cons_self ..)) (lv_ev hL (by simp [Trie.kvB])) hc)
  unfold bmiLoop bLoop
  refine costP_while_inc_lower (i := nm "i") (E := lv (nm "n")) (body := bmiLoopBody) (fun s h => gi_clk ha.hH h) ?_ ?_
    (noContB_sound _ (by decide_cbv)) (stepsB_sound (nm "i") true _ (by decide_cbv))
  · rintro s hs ⟨⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ hg
    exact c_body ha haC hCb haH hgr hcI (hIN s I hL hc) s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ hg
  · rintro s hs ⟨⟨⟨I, hL⟩, Γ, q, he, hh, hsc, hE⟩, hc⟩ ht hr
    have := MemSafe.Frames.hoare_of_hoareG (bmi_body ha haC hCb haH hgr hcI (hIN s I hL hc) (Rv := fun _ _ _ _ => True)) s hs
      ⟨hL, Γ, q, he, hh, hsc, hE⟩ ht
    rw [hr] at this
    exact this.1 rfl

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.c_loop
