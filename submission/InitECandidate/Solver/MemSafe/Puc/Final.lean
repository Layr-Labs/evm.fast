import InitECandidate.Solver.MemSafe.Puc.Call
import InitECandidate.Solver.MemSafe.Plug.Pt

/-!
# Puc: `Eb.HypPuc σ`

`pu_post`: `PucEnd` to `Eb`'s `Stp` and post (as `Plug/Pt.lean` does for `process_transaction`);
`pu_funSpec`: the whole function; `hypPuc_closed`: with `M = 2^25` and no hypothesis left.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem pu_post {Γ : Gam} {s0 t : State σ} {p : Ptrs} {out : BitVec 64} (hOK : Eb.CPre Γ)
    (hG : G guestC (HR σ) Γ s0) (hp : ptrsOf s0 = some p) (hend : PucEnd (pucE Γ s0 p) t out) :
    ∃ (Γ' : Gam) (p' : Ptrs), Eb.Stp Γ p s0 Γ' p' t (fun _ => False) ∧
      ∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO ∧ (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧
        Eb.tsPost Γ' t := by
  obtain ⟨Γ'', hG'', hO, hK, hb, hev, hcc, hj, ⟨om, hom, hombase, homty⟩, h48, hts⟩ := hend
  obtain ⟨p', hp', hord', -⟩ := id hG''
  have hordp : p.Ordered := Eb.ordered_of_G hG hp
  obtain ⟨hhp, -, -⟩ := hK p p' hp hp' hordp
  have hm : (Exb.gp0 p).Mono p' := by
    simp only [Ptrs.Mono, Exb.gp0, Ptrs.Ordered] at hord' ⊢
    omega
  have hE : Eb.EvCc t := ⟨hev, hcc⟩
  obtain ⟨hstep, hC'⟩ := Eb.stepD_of_keepH Plug.hypKeepG_closed hOK hG hp hG'' hp' hK hm hE
  refine ⟨Eb.keepG Γ'', p', ⟨hstep, hj, hE, ?_, ?_⟩, ?_⟩
  · rintro a ⟨o, ho, hty, k, hk, hpr, rfl⟩ hnd
    exact hb o ho (bk_blk hty) k hk hpr
  · intro o ho hty k hk hpr
    exact hb o ho (List.mem_append_right _ (Plug.plTys_recK _ hty)) k hk hpr
  · refine ⟨om, ?_, hombase, homty, h48, ?_⟩
    · exact mem_keepG.mpr ⟨hom, by rw [homty]; decide, by rw [homty]; decide⟩
    · obtain ⟨w, hw, o, ho, hb', ht⟩ := hts
      exact ⟨w, hw, o, mem_keepG.mpr ⟨ho, by rw [ht]; decide, by rw [ht]; decide⟩, hb', ht⟩

/-- **`process_unchecked_system_transaction`'s post.** -/
theorem pu_funSpec {M : Nat} (hpm : HypPmM σ M) (hcf : HypCfL σ) (hM : 30000000 + 2 ≤ M) (hgs : Bal.HGS σ)
    (hE0 : Calls.EcoHyp σ) : Eb.HypPuc σ := by
  have hpcm := pcm_funSpec hpm hcf
  unfold Eb.HypPuc Eb.CallR
  have h := funSpec_of_hoare (σ := σ) (X := guestCtx) (f := nm "process_unchecked_system_transaction")
    (R := fun vs s v t => ∀ (Γ : Gam) (p : Ptrs), G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → Eb.EvCc s →
      (Eb.CPre Γ ∧ Eb.BalG Γ s ∧ ∃ T D N : BitVec 64, vs = [.val (.word T), .val (.word D), .val (.word N)] ∧
        BufOK guestC Γ p T.toNat 20 ∧ N.toNat < 2 ^ 32) →
      ∃ (Γ' : Gam) (p' : Ptrs), Eb.Stp Γ p s Γ' p' t (fun _ => False) ∧
        ∃ out, v = .val (.word out) ∧ ∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO ∧
          (rd t.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧ Eb.tsPost Γ' t) ?_
  · exact FunSpec.mono h (fun vs s r t hr v hv Γ p hG hp hJ hE hpre => by
      obtain ⟨Γ', p', hst, out, hout, hrest⟩ := hr v hv Γ p hG hp hJ hE hpre
      exact ⟨Γ', p', hst, out, hout, hrest⟩)
  intro vs body callee rs hl s0 hs hloc
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, C, rfl, hsA, hsB, hsC, hA, hB, hC⟩ :=
    Spec.lookupCode_three code_puc (by decide) (by decide) (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Dv, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsC
  have key : ∀ (Γ : Gam) (p : Ptrs), G guestC (HR σ) Γ s0 → ptrsOf s0 = some p → JrNZ s0 → Eb.EvCc s0 →
      Eb.CPre Γ → Eb.BalG Γ s0 → BufOK guestC Γ p T.toNat 20 → N.toNat < 2 ^ 32 →
      Hoare σ guestCtx (fun t => t = s0) pucBody
        (fun r t => ∃ out, r = some (.returned (.val (.word out))) ∧ PucEnd (pucE Γ s0 p) t out) := by
    intro Γ p hG hp hJ hE hCP hBG hT hN
    have hlt : s0.locals.lookup (nm "target") = some (.val (.word T)) := by rw [hloc]; exact hA
    have hld : s0.locals.lookup (nm "data") = some (.val (.word Dv)) := by rw [hloc]; exact hB
    have hln : s0.locals.lookup (nm "data_n") = some (.val (.word N)) := by rw [hloc]; exact hC
    obtain ⟨vmw, hvmw, hvo⟩ := Wg.gobj_of_G hG (by decide : guestC.GT.lookup (nm "vm_system_address") = some (.ptr tB24))
    obtain ⟨q, hq, hord, hL, hF, -, hGl, hW⟩ := id hG
    have hqp : p = q := (Option.some.inj (hq.symm.trans hp)).symm
    subst hqp
    obtain ⟨bew, hbew, -⟩ := hGl (nm "be") .scalar (by decide)
    have hnw : ∀ o ∈ (pucE Γ s0 p).Γ0, ∀ k, o.HasSlot k → ¬ (pucE Γ s0 p).WSet (o.cell k) :=
      fun o ho k hk => pucE_wset (cell_big hord hL ho hk)
    unfold pucBody pucS0
    refine hseqN (puc_enter hG hp hJ hE hBG hvo hT hN ⟨hlt, hld, hln⟩) ?_
    exact pu_front (E := pucE Γ s0 p) (locIns_puc _) (AllocImpl.lookup_of_gword hvmw)
      (AllocImpl.lookup_of_gword hbew) hE0
      (fun n wt wm En' S' aaw akw K => pu_call hpm hpcm hM hgs hCP.2 hCP.1 hnw K)
  intro s hs' hp ht v hv Γ p hG hp0 hJ hE ⟨hC, hB, T', D', N', hvs, hT, hN⟩
  obtain ⟨rfl, rfl, rfl⟩ : T = T' ∧ Dv = D' ∧ N = N' := by
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    exact ⟨hvs.1, hvs.2.1, hvs.2.2⟩
  obtain ⟨out, hr, hend⟩ := key Γ p hG hp0 hJ hE hC hB hT hN s hs' hp ht
  obtain rfl : v = .val (.word out) := by
    have := hv.symm.trans hr
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at this
    exact this
  obtain ⟨Γ', p', hst, rest⟩ := pu_post hC hG hp0 hend
  exact ⟨Γ', p', hst, out, rfl, rest⟩

theorem hypPuc_closed : Eb.HypPuc σ :=
  pu_funSpec (M := 2 ^ 25) (hypPmM_closed (by norm_num)) hypCfL_closed (by norm_num) Band6.hgs_R Sc.ecoHyp_proved

end InitECandidate.Solver.MemSafe.Puc

#print axioms InitECandidate.Solver.MemSafe.Puc.hypPuc_closed
