import Std

namespace InitE

/-- A finite instruction budget, or no uniform finite budget. -/
inductive NatE where
  | finite (steps : Nat)
  | infinity
  deriving DecidableEq, Repr

instance : OfNat NatE n := ⟨.finite n⟩

namespace NatE

def Allows : NatE → Nat → Prop
  | .finite bound, steps => steps ≤ bound
  | .infinity, _ => True

/-- Infinity still requires an actual finite terminating execution. -/
def Within (budget : NatE) (terminatesAt : Nat → Prop) : Prop :=
  ∃ steps, budget.Allows steps ∧ terminatesAt steps

theorem within_infinity_iff (terminatesAt : Nat → Prop) :
    Within .infinity terminatesAt ↔ ∃ steps, terminatesAt steps := by
  simp [Within, Allows]

end NatE
end InitE
