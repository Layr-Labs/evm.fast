import InitECandidate.Solver.MemSafe.Wg.Wd4
import InitECandidate.Solver.MemSafe.Wg.Loop

/-!
# Wg: the walk of `process_withdrawals`
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

section wd5
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

/-- `while i < nwd { … }` (`wdS5`). -/
theorem wd_loop {nwd wd : BitVec 64} (hnw : nwd.toNat < 2 ^ 32)
    (hin : S (Fct.inval wd (44 * nwd.toNat))) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzj : nm "journal_n" ∉ Z)
    (hEnn : En (nm "nwd") = some (.val (.word nwd))) (hEnw : En (nm "wd") = some (.val (.word wd)))
    (hn1 : En (nm "w") = none) (hn2 : En (nm "amt") = none) (hn3 : En (nm "wei") = none) :
    HN (PA E (EnI En (BitVec.ofNat 64 0)) S) wdS5 (PA E (EnI En nwd) S) := by
  unfold wdS5
  refine hoare_cnt (P := fun iv s => PA E (EnI En iv) S s) (ci := nm "i") (cn := nm "nwd") (N := nwd) (by omega)
    (fun iv s hp => pa_decClock hp) ?_ ?_
  · intro iv s hp
    refine ⟨hp.2 _ _ (by simp (config := { decide := true }) [EnI, Env.set]), hp.2 _ _ ?_⟩
    simp (config := { decide := true }) [EnI, Env.set, hEnn]
  · intro iv hlt
    exact wd_body hlt hin hT hzt hzj hEnw hn1 hn2 hn3

theorem wd_walk (hSft : HypSft σ) (hK : HypKeepG σ) (hgs : Bal.HGS σ) {pl nwd wd bs ba bk bi bs2 sk : BitVec 64}
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hnw : nwd.toNat < 2 ^ 32)
    (hEnpl : En (nm "pl") = some (.val (.word pl))) (hn1 : En (nm "nwd") = none) (hn2 : En (nm "wd") = none)
    (hn3 : En (nm "i") = none) (hn4 : En (nm "w") = none) (hn5 : En (nm "amt") = none) (hn6 : En (nm "wei") = none) :
    Hoare σ guestCtx (PA E En (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk)) wdBody (RetW E (fun _ => False)) := by
  have hLI := retW_locIns E (fun _ => False)
  unfold wdBody
  refine hseqN (hn_sftW hSft hK hE0 wdS_safe wdS_tidy (by decide)) ?_
  refine hoare_exists fun w => ?_
  have hm56 : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.pcv (pl + BitVec.ofNat 64 56) nwd) := by
    simp [WdS1, WdS]
  have hm48 : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.pcv (pl + BitVec.ofNat 64 48) wd) := by
    simp [WdS1, WdS]
  have hmin : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.inval wd (44 * nwd.toNat)) := by
    simp [WdS1, WdS]
  unfold wdS1
  refine hdecT (locIns_resIns hLI _) (w := nwd) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs hEnpl 56) hm56 v hv) ?_
  unfold wdS2
  refine hdecT (locIns_resIns hLI _) (w := wd) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs (by simp (config := { decide := true }) [Env.set, hEnpl]) 48) hm48 v hv) ?_
  unfold wdS3
  refine hdecT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold wdS4
  refine hseqN (P1 := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) nwd)
    (WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w))
    (wd_loop (Z := nm "ts" :: zBal) hnw hmin wdS1_tidy (by decide) (by decide)
      (by simp (config := { decide := true }) [Env.set]) (by simp (config := { decide := true }) [Env.set])
      (by simp (config := { decide := true }) [Env.set, hn4]) (by simp (config := { decide := true }) [Env.set, hn5])
      (by simp (config := { decide := true }) [Env.set, hn6])) ?_
  unfold wdS11
  refine hseqN (P1 := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) nwd)
    (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk))
    (hn_incorpW hgs wdS_tidy (by decide) wdS_bal) ?_
  exact hn_ret0W (fun f hf => Or.inl hf)

end wd5

end InitECandidate.Solver.MemSafe.Wg
