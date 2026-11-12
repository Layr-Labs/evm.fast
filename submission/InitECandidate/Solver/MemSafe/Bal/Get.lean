import InitECandidate.Solver.MemSafe.Bal.Entries
import InitECandidate.Solver.MemSafe.Sc.Get

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- A found value of a table of header type `th` fits the value kind of `th`. -/
def HgFits (th : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) :
    Prop :=
  ∀ Γ : Gam, G guestC (guestHooksR (σ := σ)) Γ s → ∀ T K : BitVec 64,
    vs = [.val (.word T), .val (.word K)] → Fits Γ (.ptr th) T →
    ∀ v, r = .returned v → ∀ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)] →
      a ≠ 0 → Fits Γ (valK th) b

theorem funSpec_get_fits {th : Nat} (hth : th ∈ hdrTys) :
    FunSpec σ guestCtx (nm "htab_get") (HgFits th) := by
  have hC := SourceCost.guestCtx_code
  have hJ := HtabEntries.funSpec_get_j (σ := σ) hC
  intro vs body callee rs hl s0 hs hloc r hr
  have hJ' := hJ vs body callee rs hl s0 hs hloc r hr
  obtain ⟨hm, hgl, hd, hbe, hRet⟩ := hJ'
  intro Γ0 hG0 T K hvs hfit v hv a b hab ha
  subst hvs
  obtain ⟨o0, ho0, hoT, hot⟩ := hfit
  obtain ⟨pG, hpG, hord0, hL0, -, -, -, hW⟩ := id hG0
  have hko : Hooks.hkOf o0.ty = .tab := by
    rw [hot]; exact Hooks.hkOf_of_tab hth
  have hw : Hooks.tabW Γ0 s0 o0 := Hooks.htabHooks_guestR.get Γ0 s0 o0 hko (hW o0 ho0)
  subst hab
  have hwf : Inv.TableWF s0 T := by
    have := hw.2.2.1; rw [hoT] at this; exact this
  have hlv := HtabEntries.hg_leafVal hwf (hRet _ hv T K rfl) ha
  have := hw.2.2.2.2.1 b (by rw [hoT]; exact hlv)
  rw [hot] at this
  exact this

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.funSpec_get_fits
