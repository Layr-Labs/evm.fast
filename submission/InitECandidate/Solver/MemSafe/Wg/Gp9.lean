import InitECandidate.Solver.MemSafe.Wg.Gp8

/-!
# Wg: `process_general_purpose_requests`, the two loops
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

theorem enExt_cinc {En : Env} {Ecur : Env} {c : MlS} {v : BitVec 64} (hc1 : c ≠ nm "dep") (hc2 : c ≠ nm "dep_n")
    (hc3 : c ≠ nm "dep_cap") (h : EnExt (EnC En c v) Ecur) (dep dn dc : BitVec 64) :
    EnExt (EnDep (EnC En c (v + BitVec.ofNat 64 1)) dep dn dc)
      ((EnDep Ecur dep dn dc).set c (.val (.word (v + BitVec.ofNat 64 1)))) := by
  intro x w hx
  rw [envDep_eq] at hx
  by_cases h1 : x = nm "dep_cap"
  · subst h1; simp at hx; simp [Env.set, envDep_eq, hx, hc3.symm]
  · by_cases h2 : x = nm "dep_n"
    · subst h2; simp [h1] at hx; simp [Env.set, envDep_eq, hx, hc2.symm, h1]
    · by_cases h3 : x = nm "dep"
      · subst h3; simp [h1, h2] at hx; simp [Env.set, envDep_eq, hx, hc1.symm, h1, h2]
      · by_cases h4 : x = c
        · subst h4; simp [h1, h2, h3, EnC, Env.set] at hx ⊢; exact hx
        · simp [h1, h2, h3, EnC, Env.set, h4] at hx
          have := h x w (by simp [EnC, Env.set, h4, hx])
          simp [Env.set, h1, h2, h3, h4, envDep_eq, this]

section g9
variable {E : EbE σ} {En_in : Env} {S : FS}

/-- `while j < nl { … }`. -/
theorem gp_inner_loop {nl : BitVec 64} (hnj : En_in (nm "j") = none) (hnlog : En_in (nm "log") = none)
    (hnisdep : En_in (nm "isdep") = none) (hnsig : En_in (nm "sig") = none) (hnd : En_in (nm "nd") = none)
    (hnl : En_in (nm "nl") = some (.val (.word nl))) (hT : Tidy zGpr S) :
    Hoare σ guestCtx (DepI E (EnC En_in (nm "j") (BitVec.ofNat 64 0)) S) gprS14
      (fun r t => r = none ∧ ∃ jv, DepI E (EnC En_in (nm "j") jv) S t) := by
  unfold gprS14
  refine hoare_cnt2 (P := fun jv => DepI E (EnC En_in (nm "j") jv) S) (ci := nm "j") (cn := nm "nl") (N := nl) ?_ ?_ ?_
  · intro jv s ⟨dep, dn, dc, Nd, hP, hp⟩
    exact ⟨dep, dn, dc, Nd, hP, pa_decClock hp⟩
  · intro jv s ⟨dep, dn, dc, Nd, hP, hp⟩
    refine ⟨hp.2 _ _ ?_, hp.2 _ _ ?_⟩
    · rw [envDep_eq]; simp (config := { decide := true }) [EnC, Env.set]
    · rw [envDep_eq]
      simp (config := { decide := true }) [EnC, Env.set, hnl]
  · intro jv hlt hN s hs ⟨dep, dn, dc, Nd, hP, hp⟩ ht
    exact gp_body jv hP hnj hnlog hnisdep hnsig hnd hT s hs hp ht

end g9

end InitECandidate.Solver.MemSafe.Wg
