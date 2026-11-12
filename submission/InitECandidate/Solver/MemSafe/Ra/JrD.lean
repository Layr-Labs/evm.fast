import InitECandidate.Solver.MemSafe.Ra.JrC
import InitECandidate.Solver.MemSafe.Ra.AttInteg

/-!
# JrFix, part D: `run_attempt` and `verify_stateless_new_payload` without `JrNZ` at entry

* `cz_handoff`: after `state_init` (`PAfter`: `JrNZ`, `SiPost`), re-anchor the run at that state (`E := ⟨keepG Γ1, t, p1⟩`), rebuild
  the facts `S2b` there (`entry_facts`, `SiPost`'s `bs`/`sk_buf`, the two `block_hashes` globals), and run package F1e's tail
  (`p1_tail`, `p2_front`, `p2_be`).
* `condCost_run_attempt_nj`: `run_attempt`'s cost at `CcPreNJ RaPre0` (no `JrNZ`), same bound as `condCost_run_attempt` with
  `state_init`'s cost `Sp.bSi`.
* `condCost_verify_nj`: `verify_stateless_new_payload`'s.
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

theorem safe_S2b' (si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh : BitVec 64) :
    SafeS (S2b si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) := by
  intro f hf
  have h1 := safe_S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z
  simp only [S2b] at hf
  rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h
  · exact h1 f ((Or.inl h))
  · exact h1 f ((Or.inr (Or.inl h)))
  · exact h1 f ((Or.inr (Or.inr (Or.inl h))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inl h)))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h)))))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h)))))))))
  · exact h1 f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h)))))))))
  · subst h; exact kt_entry.1
  · subst h; exact kt_entry.2.1
  · subst h; trivial
  · subst h; trivial

/-- **The hand-off after `state_init`.** -/
theorem cz_handoff {si0 pl0 : BitVec 64} {Bph Beb : Nat} (hK : HypKeepG σ) (hPhC : HypPhCost σ Bph)
    (hEb : CondCostC σ (nm "execute_block") 2 EbPre Beb) :
    Inv.CostP σ guestCtx (PAfter si0 pl0) raS17 (bTail Bph (bFront (bBe Beb))) := by
  intro t ht hP hg
  obtain ⟨⟨hsi, hpl⟩, Γ1, p1, hz, hJ, hSP⟩ := hP
  obtain ⟨hG, hp, hE, ⟨o, ho, hb, hto⟩, hrd⟩ := hz
  have hsiK : KeepTy tSI := keepTy_block _ (by simp [PlTys, blockTys])
  obtain ⟨hGk, -⟩ := hK hG hE.1 hE.2
  have hok : o ∈ keepG Γ1 := mem_keepG.mpr ⟨ho, hto ▸ hsiK⟩
  let E : EbE σ := ⟨keepG Γ1, t, p1⟩
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => (mem_keepG.mp ho).2
  obtain ⟨pl0', ptxs0, ntx0, nwd0, T1, T2, z, hntx, hnwd, hhold⟩ := entry_facts (p0 := p1) (p := p1) hGk hok hb hto
  have hpl0 : pl0' = pl0 := by
    have h := (hhold (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0') (by simp [S1a])).1
    exact h.symm.trans hrd
  subst hpl0
  obtain ⟨-, ⟨bsw, hbs, hbsF, hbsn⟩, ⟨skw, hsk, hskF, hskn⟩, -⟩ := hSP
  have hbsO : ∃ o ∈ keepG Γ1, o.base = bsw ∧ o.ty = tBS := by
    rcases hbsF with h | ⟨x, hx, hxb, hxt⟩
    · omega
    · exact ⟨x, mem_keepG.mpr ⟨hx, hxt ▸ kt_entry.1⟩, hxb, hxt⟩
  have hskO : ∃ o ∈ keepG Γ1, o.base = skw ∧ o.ty = tB64 := by
    rcases hskF with h | ⟨x, hx, hxb, hxt⟩
    · omega
    · exact ⟨x, mem_keepG.mpr ⟨hx, hxt ▸ kt_entry.2.1⟩, hxb, hxt⟩
  obtain ⟨q, -, -, -, -, -, hGl, -⟩ := id hG
  obtain ⟨bh, hbh, -⟩ := hGl (nm "block_hashes") .scalar (by decide)
  obtain ⟨nh, hnh, -⟩ := hGl (nm "block_hashes_n") .scalar (by decide)
  have hS2 : HoldsAll p1 (keepG Γ1) p1 t (S2b si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) := by
    intro f hf
    simp only [S2b] at hf
    rcases hf with h | h | h | h | h | h | h | h | h | h | h | h | h
    · exact hhold f ((Or.inl h))
    · exact hhold f ((Or.inr (Or.inl h)))
    · exact hhold f ((Or.inr (Or.inr (Or.inl h))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inl h)))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h)))))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h))))))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl h)))))))))
    · exact hhold f ((Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr h)))))))))
    · subst h; exact ⟨hbs, hbsO⟩
    · subst h; exact ⟨hsk, hskO⟩
    · subst h; exact hbh
    · subst h; exact hnh
  let En : Env := Env.set (Env.set (fun _ => none) (nm "si") (.val (.word si0))) (nm "pl") (.val (.word pl0'))
  have hne : nm "si" ≠ nm "pl" := by decide
  have hsiE : En (nm "si") = some (.val (.word si0)) := by simp [En, Env.set, hne]
  have hplE : En (nm "pl") = some (.val (.word pl0')) := by simp [En, Env.set]
  have hlke : LKE En t := by
    intro x v hx
    simp only [En, Env.set] at hx
    split_ifs at hx with h1 h2
    · subst h1; cases hx; exact hpl
    · subst h2; cases hx; exact hsi
  have hQ : ∀ n, ResIns n (fun (_ : Option (PanSemResultExact 64)) (_ : State σ) => True) := fun n r t old h => trivial
  have hbt : ntx0.toNat < 2 ^ 24 := by omega
  have hbwd : nwd0.toNat < 2 ^ 50 := by omega
  have hw := p1_tail (E := E) (En := En) (S := S2b si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) hK hE0 hQ hsiE hplE
    (fun f hf => hf) (tidy_S2b si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh)
    (safe_S2b' si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh) hntx hPhC
    (fun E' H C WD hE0' =>
      p2_front hK hE0' hQ ⟨fun x v hx => hx, fun f hf => hf,
        tidy_S2 si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD,
        safe_S2 si0 pl0' ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD⟩
        (fun En' S' hOk' => p2_be hK hE0' hOk' hbt hbwd hEb))
  exact hw.1 t ht ⟨⟨keepG Γ1, p1, ebRun_refl hGk hp hJ hE.1 hE.2, hS2⟩, hlke⟩ hg

/-- **`run_attempt`'s cost without `JrNZ` at entry.** -/
theorem condCost_run_attempt_nj {M Bpuc BT Bcsr Bbmi Bph : Nat} (hPucC : HypPucCost σ Bpuc)
    (hPtC : HypPtCost σ M BT) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi) (hPhC : HypPhCost σ Bph)
    (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    (hK : HypKeepG σ) (hgs : Bal.HGS σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPreNJ RaPre0)
      (bRunAttempt Sp.bSi Bph (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi)) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  have hEb : CondCostC σ (nm "execute_block") 2 EbPre (bExecBlock Bpuc BT Wg.bWd (Wg.bGpr (Wg.bCsr Bpuc)) Bcsr Bbmi) :=
    Wg.condCost_execute_block_wg hPucC hPtC hCsr hBmi hPuc hSft hPt hM hK hgs
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hE, p', hp', hpre⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  obtain ⟨si0, rfl, o, ho, hb, ht⟩ := hpre
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_ra hl
  have hb0 := hbind 0 (by simp [Band.sgSi]) (by simp)
  simp only [List.getElem_cons_zero] at hb0
  have hsiK : KeepTy tSI := keepTy_block _ (by simp [PlTys, blockTys])
  obtain ⟨hGk, hOH⟩ := hK hG hE.1 hE.2
  have hok : o ∈ keepG Γ := mem_keepG.mpr ⟨ho, ht ▸ hsiK⟩
  have hC : CPre (keepG Γ) := ⟨fun o ho => (mem_keepG.mp ho).2.1, hOH⟩
  have hz : Fz si0 (rd s.memory (si0 + BitVec.ofNat 64 0)) (keepG Γ) p s := ⟨hGk, hp, hE, ⟨o, hok, hb, ht⟩, rfl⟩
  have hpz : PZ si0 (rd s.memory (si0 + BitVec.ofNat 64 0)) (fun l => l.lookup (nm "si") = some (.val (.word si0)))
      (fun Γ _ _ => CPre Γ) s := ⟨by rw [hloc]; exact hb0.1, keepG Γ, p, hz, hC⟩
  exact (prefix_cost (cz_handoff hK hPhC hEb)) s hs hpz hgood

theorem raPreNJ_congr : ∀ (vs : List (ValueHOL 64)) (s t : State σ) (Γ : Gam), t.memory = s.memory → t.globals = s.globals →
    t.memaddrs = s.memaddrs → t.be = s.be → CcPreNJ RaPre0 vs s Γ → CcPreNJ RaPre0 vs t Γ := by
  intro vs s t Γ hm hg hd hbe ⟨⟨⟨e, he, hse⟩, ⟨c, hc, hsc⟩⟩, p, hp, hpre⟩
  exact ⟨⟨⟨e, by rw [gword_congr hg]; exact he, hse⟩, ⟨c, by rw [gword_congr hg]; exact hc, hsc⟩⟩, p,
    (ptrsOf_congr hg).trans hp, hpre⟩

/-- **`verify_stateless_new_payload`'s cost without `JrNZ` at entry** (what `main` can establish). -/
theorem condCost_verify_nj {B : Nat}
    (hRA : CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPreNJ RaPre0) B) :
    CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi (CcPreNJ RaPre0)
      (1 + ((1 + B + (0 + 0) + 0) + 6) + (0 + 0) + 0) :=
  Band2.verify_condCost Hooks.guestHooksR_lawful raPreNJ_congr
    (Band2.attempt_l7_of_run_attempt Hooks.guestHooksR_lawful raPreNJ_congr hRA)

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.cz_handoff
#print axioms InitECandidate.Solver.MemSafe.Att.condCost_run_attempt_nj
#print axioms InitECandidate.Solver.MemSafe.Att.condCost_verify_nj
