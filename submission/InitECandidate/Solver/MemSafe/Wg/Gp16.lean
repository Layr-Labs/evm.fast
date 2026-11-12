import InitECandidate.Solver.MemSafe.Wg.Gp15

/-!
# Wg: the walk of `process_general_purpose_requests`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

section g16
variable {E : EbE σ}

theorem gpr_walk (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hCsr : CallR (σ := σ) (nm "process_checked_system_transaction") CsrPreW (fun _ _ _ _ => False) CsrQW)
    {En0 : Env} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk kx0 : BitVec 64}
    (hk0 : kx0.toNat ≤ 0) (hgw : gword E.s0 (nm "bo") = some bo0) (hrq : rd E.s0.memory (bo0 + BitVec.ofNat 64 56) = rq0)
    (hn : ∀ x : MlS, x ∈ [nm "rls", nm "nr", nm "rp", nm "dep", nm "dep_n", nm "dep_cap", nm "i", nm "logs", nm "nl",
      nm "lp", nm "j", nm "log", nm "isdep", nm "sig", nm "nd", nm "o1", nm "o2", nm "o3", nm "o4"] → En0 x = none) :
    Hoare σ guestCtx (PA E En0 (SkX (GS E.Γ0 E.s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) bo0 kx0)) gprBody
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
  refine hdec_ld (locIns_resIns hLI _) (fun wrls => ?_)
  unfold gprS1
  refine hdec_ld (locIns_resIns hLI _) (fun wnr => ?_)
  unfold gprS2
  refine hdec_ld (locIns_resIns hLI _) (fun wrp => ?_)
  unfold gprS3
  refine hdecAllocFresh (Z := zGpr) (locIns_resIns hLI _) (n := BitVec.ofNat 64 8) (fun s hs => evI_cw s 8) hT0 zGpr_tab ?_
  intro wdep
  unfold gprS4
  refine hdecT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS5
  refine hdecT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold gprS6
  refine hdecT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
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
  refine hseqN (P1 := fun t => ∃ iv, DepI E (EnC Eout (nm "i") iv) (SkX G0 bo0 kx0) t) ?_ ?_
  · refine hoare_pre (gp_outer_loop e_j e_log e_isdep e_sig e_nd e_logs e_nl e_lp e_nr hT0) ?_
    intro t _ ht
    refine ⟨wdep, BitVec.ofNat 64 0, BitVec.ofNat 64 0, 8, ⟨by simp, by simp, by norm_num⟩, ?_⟩
    exact pa_enExt ht (enExt_depset (Ecur := Eout) (y := nm "i") (by decide) (by decide) (by decide) _ wdep _ _)
  · intro s hs ⟨iv, hd⟩ ht
    unfold gprS28
    have h1 : (EnC Eout (nm "i") iv) (nm "dep") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dep]
    have h2 : (EnC Eout (nm "i") iv) (nm "dep_n") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dn]
    have h3 : (EnC Eout (nm "i") iv) (nm "dep_cap") = none := by simp (config := { decide := true }) [EnC, Env.set, e_dc]
    refine (hseqN (P1 := TQ E (EnC Eout (nm "i") iv) G0 bo0 1) (gp_t1 hk0 hgw hrq h1 h2 h3)
      (gp_tail hK hE0 hCsr hgw hrq ?_ ?_ ?_ ?_)) s hs hd ht
    all_goals simp (config := { decide := true }) [EnC, Env.set, e_o1, e_o2, e_o3, e_o4]

end g16

end InitECandidate.Solver.MemSafe.Wg
