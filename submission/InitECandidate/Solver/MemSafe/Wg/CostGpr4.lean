import InitECandidate.Solver.MemSafe.Wg.CostGpr3

/-!
# Wg: `HypGprCost`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section cg4
variable {E : EbE σ}

theorem cw_gpr_walk {Bcsr : Nat} (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hCsr : CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW)
    (hCsrC : HypCsrCostW σ Bcsr)
    {En0 : Env} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk kx0 : BitVec 64}
    (hk0 : kx0.toNat ≤ 0) (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hn : ∀ x : MlS, x ∈ [nm "rls", nm "nr", nm "rp", nm "dep", nm "dep_n", nm "dep_cap", nm "i", nm "logs", nm "nl",
      nm "lp", nm "j", nm "log", nm "isdep", nm "sig", nm "nd", nm "o1", nm "o2", nm "o3", nm "o4"] → En0 x = none) :
    CW (PA E En0 (SkX (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 kx0)) gprBody (bGpr Bcsr)
      (RetR E (GprD E.s0) (GprRm bo0)) := by
  have hLI := retR_locIns E (GprD E.s0) (GprRm bo0)
  set G0 := GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk with hG0
  have n_rls := hn (nm "rls") (by simp)
  have n_nr := hn (nm "nr") (by simp)
  have n_rp := hn (nm "rp") (by simp)
  have n_dep := hn (nm "dep") (by simp)
  have n_dn := hn (nm "dep_n") (by simp)
  have n_dc := hn (nm "dep_cap") (by simp)
  have n_i := hn (nm "i") (by simp)
  have n_logs := hn (nm "logs") (by simp)
  have n_nl := hn (nm "nl") (by simp)
  have n_lp := hn (nm "lp") (by simp)
  have n_j := hn (nm "j") (by simp)
  have n_log := hn (nm "log") (by simp)
  have n_isdep := hn (nm "isdep") (by simp)
  have n_sig := hn (nm "sig") (by simp)
  have n_nd := hn (nm "nd") (by simp)
  have n_o1 := hn (nm "o1") (by simp)
  have n_o2 := hn (nm "o2") (by simp)
  have n_o3 := hn (nm "o3") (by simp)
  have n_o4 := hn (nm "o4") (by simp)
  have hT0 : Tidy zGpr (SkX G0 bo0 kx0) := sk_tidy gs_tidy bo0 kx0
  unfold gprBody
  refine cw_dec_ld (locIns_resIns hLI _) (fun wrls => ?_)
  unfold gprS1
  refine cw_dec_ld (locIns_resIns hLI _) (fun wnr => ?_)
  unfold gprS2
  refine cw_dec_ld (locIns_resIns hLI _) (fun wrp => ?_)
  unfold gprS3
  refine cw_allocFresh (Z := zGpr) (locIns_resIns hLI _) (n := BitVec.ofNat 64 8) (fun s hs => evI_cw s 8) hT0 zGpr_tab ?_
  intro wdep
  unfold gprS4
  refine cw_decT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS5
  refine cw_decT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS6
  refine cw_decT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS7
  set Eout : Env := ((En0.set (nm "rls") (.val (.word wrls))).set (nm "nr") (.val (.word wnr))).set (nm "rp")
    (.val (.word wrp)) with hEout
  have e_j : Eout (nm "j") = none := by simp (config := { decide := true }) [hEout, Env.set, n_j]
  have e_log : Eout (nm "log") = none := by simp (config := { decide := true }) [hEout, Env.set, n_log]
  have e_isdep : Eout (nm "isdep") = none := by simp (config := { decide := true }) [hEout, Env.set, n_isdep]
  have e_sig : Eout (nm "sig") = none := by simp (config := { decide := true }) [hEout, Env.set, n_sig]
  have e_nd : Eout (nm "nd") = none := by simp (config := { decide := true }) [hEout, Env.set, n_nd]
  have e_logs : Eout (nm "logs") = none := by simp (config := { decide := true }) [hEout, Env.set, n_logs]
  have e_nl : Eout (nm "nl") = none := by simp (config := { decide := true }) [hEout, Env.set, n_nl]
  have e_lp : Eout (nm "lp") = none := by simp (config := { decide := true }) [hEout, Env.set, n_lp]
  have e_nr : Eout (nm "nr") = some (.val (.word wnr)) := by simp (config := { decide := true }) [hEout, Env.set]
  have e_dep : Eout (nm "dep") = none := by simp (config := { decide := true }) [hEout, Env.set, n_dep]
  have e_dn : Eout (nm "dep_n") = none := by simp (config := { decide := true }) [hEout, Env.set, n_dn]
  have e_dc : Eout (nm "dep_cap") = none := by simp (config := { decide := true }) [hEout, Env.set, n_dc]
  have e_o1 : Eout (nm "o1") = none := by simp (config := { decide := true }) [hEout, Env.set, n_o1]
  have e_o2 : Eout (nm "o2") = none := by simp (config := { decide := true }) [hEout, Env.set, n_o2]
  have e_o3 : Eout (nm "o3") = none := by simp (config := { decide := true }) [hEout, Env.set, n_o3]
  have e_o4 : Eout (nm "o4") = none := by simp (config := { decide := true }) [hEout, Env.set, n_o4]
  refine cw_seq (R := fun t => ∃ iv, DepI E (EnC Eout (nm "i") iv) (SkX G0 bo0 kx0) t) ?_ ?_
  · refine cw_pre (cw_leaf (cost_guest_costA costFin_gprS8) (gp_outer_loop e_j e_log e_isdep e_sig e_nd e_logs e_nl e_lp e_nr hT0)) ?_
    intro t _ ht
    refine ⟨wdep, BitVec.ofNat 64 0, BitVec.ofNat 64 0, 8, ⟨by simp, by simp, by norm_num⟩, ?_⟩
    exact pa_enExt ht (enExt_depset (Ecur := Eout) (y := nm "i") (by decide) (by decide) (by decide) _ wdep _ _)
  · refine cw_exists (P := fun iv t => DepI E (EnC Eout (nm "i") iv) (SkX G0 bo0 kx0) t) fun iv => ?_
    unfold gprS28
    have h1 : (EnC Eout (nm "i") iv) (nm "dep") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dep]
    have h2 : (EnC Eout (nm "i") iv) (nm "dep_n") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dn]
    have h3 : (EnC Eout (nm "i") iv) (nm "dep_cap") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dc]
    refine cw_seq (R := TQ E (EnC Eout (nm "i") iv) G0 bo0 1) (cw_leaf cost_app (gp_t1 hk0 hgw hrq h1 h2 h3))
      (cw_gp_tail hK hE0 hCsr hCsrC hgw hrq ?_ ?_ ?_ ?_)
    all_goals simp (config := { decide := true }) [EnC, Env.set, e_o1, e_o2, e_o3, e_o4]

end cg4

/-- `HypGprCost` with the four address globals in the precondition (the cost twin of `HypGpr4`). -/
def GprPreC4 : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs s Γ _ => vs = [] ∧ CPre Γ ∧ BalG Γ s ∧ (GprPre Γ s ∧ GprAddrs Γ s)

def HypGprCost4 (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "process_general_purpose_requests") 0 GprPreC4 B

theorem hypGprCost {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) :
    HypGprCost4 σ (bGpr (bCsr Bpuc)) := by
  have hCsr := callR_csr hSft hPuc hK
  have hCsrC := hypCsrCostW hPucC hSft hPuc hK
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hvs, hC, hbal, ⟨bo0, rq0, rl, hgw, hbo, hrq, hrqo, hk0, hrl, hrlo⟩,
    ⟨⟨a1, ga1, ha1⟩, ⟨a2, ga2, ha2⟩, ⟨a3, ga3, ha3⟩, ⟨a4, ga4, ha4⟩⟩⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  subst hvs
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_gpr hl
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  obtain ⟨q, hq, hord, hL0, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hp.symm.trans hq)
  obtain ⟨ob, hob, hob1, hob2, hob3⟩ := hbo
  obtain ⟨orq, horq, horq1, horq2, horq3⟩ := hrqo
  obtain ⟨M1, k1, hM1, hM1t, hk1, hp1, he1⟩ := blk_cell (off := 56) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  obtain ⟨M2, k2, hM2, hM2t, hk2, hp2, he2⟩ := blk_cell (off := 64) ⟨ob, hob, hob1, hob2, hob3⟩ tBO_block tBO_prot (by omega) (by omega)
  have hrq' : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0 := hrq
  have hkx : (rd s.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 0 := by rw [hk0]; simp
  have hpa : PA E (fun _ => none) (SkX (GS Γ s bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 (rd s.memory (bo0 + BitVec.ofNat 64 64))) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, fun x w hx => by cases hx⟩
    intro f hf
    rcases hf with hf | rfl
    · rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨hgw, ob, hob, hob1, hob2⟩
      · exact ⟨ob, hob, hob1, hob2, hob3⟩
      · exact ⟨orq, horq, horq1, horq2, horq3⟩
      · exact ⟨hrq, M1, hM1, hM1t, k1, hk1, hp1, he1⟩
      · exact ⟨ga1, ha1⟩
      · exact ⟨ga2, ha2⟩
      · exact ⟨ga3, ha3⟩
      · exact ⟨ga4, ha4⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · exact ⟨rfl, M2, hM2, hM2t, k2, hk2, hp2, he2⟩
  have hw := cw_gpr_walk (E := E) (En0 := fun _ => none) (a1 := a1) (a2 := a2) (a3 := a3) (a4 := a4) (bs := bs) (ba := ba)
    (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk) hK hE0 hCsr hCsrC hkx hgw hrq' (fun x _ => rfl)
  exact hw.1 s hs hpa hgood

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypGprCost
