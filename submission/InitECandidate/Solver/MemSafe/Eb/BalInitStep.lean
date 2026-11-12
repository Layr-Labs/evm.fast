import InitECandidate.Solver.MemSafe.Eb.CallX
import InitECandidate.Solver.MemSafe.Bal.BalInit
import InitECandidate.Solver.MemSafe.Eb.Head6

/-!
# `execute_block`: `bal_init()`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def nmBA : MlS := nm "bal_accounts"
def nmBIA : MlS := nm "bal_idx_accts"
def nmBIS : MlS := nm "bal_idx_stor"
def nmBK : MlS := nm "bal_key_buf"

/-- The four block-access-list globals, as facts. -/
def BalNF (w1 w2 w3 w4 : BitVec 64) : FS := fun f =>
  f = Fct.gobj nmBA w1 tHTd20 ∨ f = Fct.gobj nmBIA w2 tHTh28 ∨ f = Fct.gobj nmBIS w3 tHTh60 ∨ f = Fct.gobj nmBK w4 tB64

theorem cr_balInit : CallR (σ := σ) (nm "bal_init") (fun vs _ Γ p => ArgsOK guestC Γ p Bal.biSig.params vs)
    (fun _ _ _ _ => False) (fun vs s Γ p v t Γ' p' => RetOK Γ' p p' vs Bal.biSig.ret v ∧
      (Bal.biSig.grows = false → NewFresh Γ Γ' p p) ∧ Bal.BiPost vs s Γ (.returned v) t Γ') :=
  callR_pre (callR_of_sumSpecA (Pre := fun vs s Γ => Bal.BiPre vs s Γ) (PW := fun _ _ _ _ => False)
    (Q := Bal.BiPost) Bal.sumSpec_bal_init (by decide) (by intro g _ h; cases h) (fun _ _ _ _ _ h => h.elim))
    (fun _ _ _ _ _ _ hpre => ⟨hpre, trivial⟩)

section bi
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem s15_balInit (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (balW.contains g = true))
    (hnext : ∀ w1 w2 w3 w4 : BitVec 64, Hoare σ guestCtx (PA E En (fun f => S f ∨ BalNF w1 w2 w3 w4 f)) ebS16 QT) :
    Hoare σ guestCtx (PA E En S) ebS15 QT := by
  unfold ebS15
  refine hseqN (hn_callRX (f := nm "bal_init") (args := []) (S := S) (W := fun g => balW.contains g = true)
    cr_balInit (gwk_bal (by decide)) (fun NF => ∃ w1 w2 w3 w4, ∀ f, NF f ↔ BalNF w1 w2 w3 w4 f) ?_ ?_) ?_
  · refine callObl_plain ?_ hT hz
    intro s hs vs hvs Γ p hr hL
    rw [evs_nil] at hvs
    cases hvs
    exact ⟨rfl, fun i pt v hpt => by simp [Bal.biSig] at hpt⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq
    obtain ⟨-, -, hbi⟩ := hq
    obtain ⟨⟨w1, hw1, o1, ho1, hb1, ht1⟩, ⟨w2, hw2, o2, ho2, hb2, ht2⟩, ⟨w3, hw3, o3, ho3, hb3, ht3⟩,
      ⟨w4, hw4, o4, ho4, hb4, ht4⟩⟩ := hbi v rfl
    refine ⟨BalNF w1 w2 w3 w4, ⟨w1, w2, w3, w4, fun f => Iff.rfl⟩, ?_⟩
    intro f hf
    rcases hf with rfl | rfl | rfl | rfl
    · exact ⟨hw1, o1, ho1, hb1, ht1⟩
    · exact ⟨hw2, o2, ho2, hb2, ht2⟩
    · exact ⟨hw3, o3, ho3, hb3, ht3⟩
    · exact ⟨hw4, o4, ho4, hb4, ht4⟩
  · refine hoare_exists fun NF => ?_
    intro s hs ⟨⟨w1, w2, w3, w4, hNF⟩, hpa⟩
    have : NF = BalNF w1 w2 w3 w4 := funext fun f => propext (hNF f)
    subst this
    exact hnext w1 w2 w3 w4 s hs hpa

end bi

end InitECandidate.Solver.MemSafe.Eb
