import InitECandidate.Solver.MemSafe.Rcpt.Main5
import InitECandidate.Solver.MemSafe.Bn.Code

set_option autoImplicit false

/-!
# `encode_receipt`: the receipt fits its buffer (`Ptx.HypRcptFresh`)

`funSpec_rcptFresh_of`: for the `CSumm` of `logs_bloom` as a hypothesis.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

theorem locals_setVar (x : MlS) (v : ValueHOL 64) (st : State σ) :
    (setVarHOLFinite x v st).locals = st.locals.update (x, v) := rfl

theorem funSpec_rcptFresh_of
    (hLB : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "logs_bloom") bloomSig []) :
    FunSpec σ guestCtx (nm "encode_receipt") (fun vs s r t => ∀ v, r = .returned v →
      ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs) (logs : BitVec 64),
        G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ptrsOf s = some p → Aw.Below Γ h0 → h0 % 8 = 0 →
        heapBase ≤ h0 → h0 ≤ p.hp → argW vs 3 = some logs → LogsK Γ p s.memory h0 logs →
        RcptOut Γ p s t v) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  have hA := hF.hal
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p logs hG hp hB h8 hbase hh0 harg hLK
  subst hv
  rw [hX] at hl
  obtain ⟨rfl, -, A0, B0, C0, D0, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    Bn.lookupCode_four code_encode_receipt (by decide) hl
  obtain ⟨CG, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨Lg, rfl⟩ := val_of_shapeEq_one hD'
  simp only [argW, wordOf, List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at harg
  subst harg
  have hG0 := hG
  obtain ⟨p0, hp0, hord, hL, -⟩ := hG0
  have hpp : p0 = p := Option.some.inj (hp0.symm.trans hp)
  subst hpp
  have hK : AwOK (aOf s Γ p0 h0) :=
    ⟨Hooks.guestHooksR_lawful, Helpers.tagSlots_guestC, Annot.drv_allocG, h8, hh0, hord, hbase⟩
  have hRI0 : RI (aOf s Γ p0 h0) p0.hp s := ri_init hG hp hB
  have hSt : ∀ Fl, IStable (RI (aOf s Γ p0 h0) Fl) := fun Fl => ri_stable hK Fl
  set S := Sk s.memory Lg (lgN s.memory Lg) with hSdef
  have hBnd : BndB s.memory Lg := ⟨fun i hi => logsK_bounds hLK hi, hLK.2.2.2.2⟩
  have hLg : s.locals.lookup logsN = some (.val (.word Lg)) := by rw [hloc]; exact hld
  have hcg : s.locals.lookup cgN = some (.val (.word CG)) := by rw [hloc]; exact hlc
  have H : HoareG σ guestCtx (fun t => t = s) erBody (fun r t => ∀ v, r = some (.returned v) →
      RcptOut Γ p0 s t v) := by
    rw [erBody_eq]
    refine hoareG_decCall (isp_bound hK hX p0.hp S) ?_ ?_
    · intro s0 hs0 hP vs0 hvs callee0 v0 st hR hctx hsh
      subst hP
      rw [evs_cons (ev_lw hLg) evs_nil] at hvs
      cases hvs
      obtain ⟨hIst, hRet⟩ := hR (hSt _ hRI0 rfl rfl rfl rfl) ⟨Lg, by simp [argW, wordOf], hBnd, rfl⟩ v0 rfl
      subst hRet
      refine hoareG_decCall (isp_alloc hK hX p0.hp) ?_ ?_
      · intro s1 hs1 hP1 vs1 hvs1 callee1 v1 st1 hR1 hctx1 hsh1
        subst hP1
        have hbound : (setVarHOLFinite boundN (.val (.word (BitVec.ofNat 64 (16 + S))))
            {st with locals := s0.locals}).locals.lookup boundN =
            some (.val (.word (BitVec.ofNat 64 (16 + S)))) := by
          rw [locals_setVar]; exact lookup_update_self _ _ _
        rw [evs_cons (ev_add2 (ev_lw hbound) (ev_cw _ 400)) evs_nil] at hvs1
        cases hvs1
        obtain ⟨hI2, n, q, p'', hvs', rfl, hq1, hq2, hp'', hq3, hq4, hq5⟩ :=
          hR1 (hSt _ (hSt _ hIst rfl rfl rfl rfl) rfl rfl rfl rfl) ⟨_, rfl⟩ _ rfl
        simp only [List.cons.injEq, and_true, ValueHOL.val.injEq, HolWordLab.word.injEq] at hvs'
        subst hvs'
        have hS56 : S ≤ 2 ^ 56 :=
          sk_small hBnd.2 (fun i hi => lgWb_le _ _ i (hBnd.1 i hi).1 (hBnd.1 i hi).2) (Nat.le_refl _)
        have hn : (BitVec.ofNat 64 (16 + S) + BitVec.ofNat 64 400).toNat = S + 416 := by
          rw [ofNat_add_ofNat', toNat_ofNat_lt (by omega)]; omega
        rw [hn] at hq3
        have hq1' : p0.hp ≤ q.toNat := hq1
        have hBE : q.toNat + S + 416 ≤ heapEnd := by omega
        have hIq : RI (aOf s0 Γ p0 h0) (q.toNat + S + 416) _ :=
          ⟨hI2.1, hI2.2.1, p'', hp'', by omega⟩
        have HK := rcpt_K hX hA hK hLB hLK hL rfl hq1' hBE (CG := CG)
        refine hoareG_conseq HK (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
        · subst ht
          refine ⟨hSt _ hIq rfl rfl rfl rfl, ?_⟩
          show LK Lg CG q.toNat ((s0.locals.update (boundN, _)).update (Aw.bufN, _))
          refine ⟨lb_keep (lb_keep hLg (by decide)) (by decide), lb_keep (lb_keep hcg (by decide)) (by decide), ?_⟩
          unfold LW
          rw [lookup_update_self, ofNat_toNat_self]
        · intro v hv
          obtain ⟨hRI, hKR⟩ := hq.2.2 v hv
          exact rcpt_conv (Fl := q.toNat + S + 416) (Nat.le_refl _) (by omega) hq1' hRI hKR
      · intro s0 hs0 hP vs0 hvs callee0 r0 st hR hctx habn v hv
        exact absurd (Option.some.inj hv) (abn_ne_returned habn v)
    · intro s0 hs0 hP vs0 hvs callee0 r0 st hR hctx habn v hv
      exact absurd (Option.some.inj hv) (abn_ne_returned habn v)
  have H1 := H s hs rfl (by rw [hr]; simp [Good])
  rw [hr] at H1
  exact H1 _ rfl

end InitECandidate.Solver.MemSafe.Rcpt
