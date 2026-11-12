import InitECandidate.Solver.MemSafe.Wg.Gp6

/-!
# Wg: `process_general_purpose_requests`, the inner loop
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

/-- The environment with the counter `c` at `v`. -/
def EnC (E0 : Env) (c : MlS) (v : BitVec 64) : Env := E0.set c (.val (.word v))

section g7
variable {E : EbE σ} {En0 Ecur : Env} {S : FS}

theorem gp_ite_skip {c : ExpHOL 64} {a : ProgHOL 64} {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd)
    (hext : EnExt En0 Ecur)
    (ha : HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) a (DepI E En0 S)) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) (.ite c a .skip) (DepI E En0 S) :=
  hn_ite (hn_pre ha (fun s _ h => h.1))
    (hoare_pre (hoare_skip (fun s _ h => ⟨rfl, dep, dn, dc, Nd, hP, pa_enExt h.1 (enExt_dep hext dep dn dc)⟩))
      (fun s hs h => h))

theorem gp_s21 {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hT : Tidy zGpr S) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS21 (DepI E En0 S) := by
  unfold gprS21
  exact gp_ite_skip hP hext (gp_dep_step hP hn0 hT hext)

/-- `var sig = memeq(...); if sig != 0 { … }`. -/
theorem gp_s20 {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hsig : En0 (nm "sig") = none) (hT : Tidy zGpr S) (hext : EnExt En0 Ecur) :
    Hoare σ guestCtx (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS20 (fun r t => r = none ∧ DepI E En0 S t) := by
  unfold gprS20
  refine hdec_tab1 (Z := zGpr) (resIns_depI hsig (by decide) (by decide) (by decide)) tab_memeq rfl (by decide)
    (by simp) (by simp) (tidy_add_fbuf hT dep Nd) zGpr_tab ?_
  intro w
  exact hoare_pre (gp_s21 hP hn0 hT (enExt_set hext hsig _)) (fun t _ ht =>
    pa_depset (by decide) (by decide) (by decide) ht)

theorem gp_s19 {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hsig : En0 (nm "sig") = none) (hT : Tidy zGpr S) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS19 (DepI E En0 S) := by
  unfold gprS19
  refine hn_ite (hoare_pre (gp_s20 hP hn0 hsig hT hext) (fun s _ h => h.1)) ?_
  exact hoare_pre (hoare_skip (fun s _ h => ⟨rfl, dep, dn, dc, Nd, hP, pa_enExt h.1 (enExt_dep hext dep dn dc)⟩))
    (fun s hs h => h)

theorem gp_s18 {dep dn dc : BitVec 64} {Nd : Nat} (hP : DepP dn dc Nd) (hn0 : En0 (nm "nd") = none)
    (hsig : En0 (nm "sig") = none) (hT : Tidy zGpr S) (hext : EnExt En0 Ecur) :
    HN (PA E (EnDep Ecur dep dn dc) (DepS S dep Nd)) gprS18 (DepI E En0 S) := by
  unfold gprS18
  exact gp_ite_skip hP hext (gp_s19 hP hn0 hsig hT hext)

end g7

end InitECandidate.Solver.MemSafe.Wg
