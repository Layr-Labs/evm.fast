import InitECandidate.Solver.MemSafe.Sc.RulesW
import InitECandidate.Solver.MemSafe.HtabEntries.JSet
import InitECandidate.Solver.MemSafe.HtabEntries.NoExcHtab
import InitECandidate.Solver.MemSafe.Rec.WireR

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# A typed `htab_get` for `tHTc32` tables (the code-write tables; `Stor4.Get` for `tCSL` values)

The fold checker cannot type a field of a two-word result, and the found-ness correlation
(`m.0 ≠ 0 → m.1 fits`) is not expressible in a `Sig`. So the typed fact is the extra post `Q` of a
`SumSpecA`: `htabGetQ_R`. On a `tHTc32` table, a found value fits `ptr tCSL` (`hg_leafVal` and
the table hook's `ValOK`).
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- **The typed `htab_get`** (a functional spec on the call-entry state): on a `tHTc32` table,
a found value fits `ptr tCSL`. Stated with the ghost typing `Γ` of the entry state. -/
def HgFitsC (th : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) :
    Prop :=
  ∀ Γ : Gam, G guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ T K : BitVec 64,
    vs = [.val (.word T), .val (.word K)] → Fits Γ (.ptr th) T →
    ∀ v, r = .returned v → ∀ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)] →
      a ≠ 0 → Fits Γ (.ptr tCSL) b

/-- For the code-write table types: the transaction's (`tHTc32`) and the block state's (`tHTbc32`, config step 3). -/
theorem funSpec_get_fitsC {th : Nat} (hth : th = tHTc32 ∨ th = tHTbc32) :
    FunSpec σ guestCtx (nm "htab_get") (HgFitsC th) := by
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
    rw [hot]; rcases hth with rfl | rfl <;> exact Hooks.hkOf_of_tab (by decide)
  have hw : Hooks.tabW Γ0 s0 o0 := Hooks.htabHooks_guestR.get Γ0 s0 o0 hko (hW o0 ho0)
  subst hab
  have hwf : Inv.TableWF s0 T := by
    have := hw.2.2.1; rw [hoT] at this; exact this
  have hlv := HtabEntries.hg_leafVal hwf (hRet _ hv T K rfl) ha
  have := hw.2.2.2.2.1 b (by rw [hoT]; exact hlv)
  rw [hot] at this
  rcases hth with rfl | rfl <;> exact this

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.funSpec_get_fitsC
