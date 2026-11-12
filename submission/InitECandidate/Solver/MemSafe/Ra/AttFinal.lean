import InitECandidate.Solver.MemSafe.Ra.AttEntry
import InitECandidate.Solver.MemSafe.Eb.Final3
import InitECandidate.Solver.MemSafe.Wg.Plug
import InitECandidate.Solver.Band.Attempt

/-!
# `run_attempt`: the conditional cost

**`condCost_run_attempt`**: `CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") sgSi (CcPre RaPre0) (bRunAttempt …)`.
Precondition `RaPre0`: `si` is the base of a `tSI` object of `Γ` (all else — the payload record, the witness lists, the constant-address
globals — comes from `G`'s record hooks and typed globals), with `JrNZ`, `ev` / `cur_cont` null (`EvCc`) and an ordered allocator.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- `run_attempt(si)`: `si` is a `tSI` object. -/
def RaPre0 : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop :=
  fun vs _ Γ _ => ∃ si : BitVec 64, vs = [.val (.word si)] ∧ ∃ o ∈ Γ, o.base = si ∧ o.ty = tSI

theorem s2b_sub {S'' : FS} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64}
    (h1 : ∀ f, S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z f → S'' f) (hbs : S'' (Fct.gobj (nm "bs") bsw tBS))
    (hsk : S'' (Fct.gobj (nm "sk_buf") skw tB64)) (hbh : S'' (Fct.gval (nm "block_hashes") bh))
    (hnh : S'' (Fct.gval (nm "block_hashes_n") nh)) : ∀ f, S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh f → S'' f := by
  intro f hf
  simp only [S2b] at hf
  rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h
  all_goals first
    | (subst h; exact hbs) | (subst h; exact hsk) | (subst h; exact hbh) | (subst h; exact hnh)
    | exact h1 f (by subst h; simp [S1a])

def bRunAttempt (Bsi Bph Beb : Nat) : Nat := bHead (bNdb Bsi (bTail Bph (bFront (bBe Beb))))

theorem condCost_run_attempt {M Bpuc BT Bcsr Bbmi Bsi Bph : Nat} (hPucC : HypPucCost σ Bpuc)
    (hPtC : HypPtCost σ M BT) (hCsr : HypCsrCost σ Bcsr)
    (hBmi : HypBmiCost σ Bbmi) (hSiC : HypSiCost σ Bsi) (hPhC : HypPhCost σ Bph)
    (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    (hK : HypKeepG σ) (hgs : Bal.HGS σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0)
      (bRunAttempt Bsi Bph (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hEb : CondCostC σ (nm "execute_block") 2 EbPre (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi) :=
    Wg.condCost_execute_block_wg hPucC hPtC hCsr hBmi hPuc hSft hPt hM hK hgs
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hpre⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  obtain ⟨si0, rfl, o, ho, hb, ht⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_ra hl
  have hb0 := hbind 0 (by simp [Band.sgSi]) (by simp)
  simp only [List.getElem_cons_zero] at hb0
  have hsiK : KeepTy tSI := keepTy_block _ (by simp [PlTys, blockTys])
  obtain ⟨hGk, hOH⟩ := hK hG hE.1 hE.2
  have hok : o ∈ keepG Γ := mem_keepG.mpr ⟨ho, ht ▸ hsiK⟩
  let E : EbE σ := ⟨keepG Γ, s, p⟩
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => (mem_keepG.mp ho).2
  obtain ⟨pl0, ptxs0, ntx0, nwd0, T1, T2, z, hntx, hnwd, hhold⟩ := entry_facts (p0 := p) (p := p) hGk hok hb ht
  have hrefl : EbRun (keepG Γ) s p (keepG Γ) s p := ebRun_refl hGk hp hJ hE.1 hE.2
  let En0 : Env := Env.set (fun _ => none) (nm "si") (.val (.word si0))
  have hsi0 : En0 (nm "si") = some (.val (.word si0)) := by simp [En0, Env.set]
  have hpa : PA E En0 (S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z) s := by
    refine ⟨⟨keepG Γ, p, hrefl, hhold⟩, ?_⟩
    intro x v hx
    simp only [En0, Env.set] at hx
    split_ifs at hx with h1
    · subst h1; rw [hloc]; cases hx; exact hb0.1
  have hQ : ∀ n, ResIns n (fun (_ : Option (PanSemResultExact 64)) (_ : State σ) => True) := fun n r t old h => trivial
  have hbt : ntx0.toNat < 2 ^ 24 := by omega
  have hbwd : nwd0.toNat < 2 ^ 50 := by omega
  have hw := p1_head (E := E) (En := En0) hK hE0 hQ hsi0 (fun f hf => hf) (tidy_S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z)
    (safe_S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z)
    (fun En' S' bh nh hsi' hpl' hsub' hbh hnh hT' hS' =>
      p1_ndb hK hE0 hQ hsi' hpl' hsub' hT' hS' hSiC
        (fun En'' S'' bsw skw hsi'' hpl'' hS'S'' hbs hsk hT'' hS'' =>
          p1_tail hK hE0 hQ hsi'' hpl''
            (s2b_sub (fun f hf => hS'S'' f (hsub' f hf)) hbs hsk (hS'S'' _ hbh) (hS'S'' _ hnh)) hT'' hS'' hntx hPhC
            (fun E' H C WD hE0' =>
              p2_front hK hE0' hQ ⟨fun x v hx => hx, fun f hf => hf, tidy_S2 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _,
                safe_S2 _ _ _ _ _ _ _ _ _ _ _ _ _ _ _⟩
                (fun En' S' hOk' => p2_be hK hE0' hOk' hbt hbwd hEb))))
  exact hw.1 s hs hpa hgood

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.condCost_run_attempt
