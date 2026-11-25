import InitECandidate.Solver.MemSafe.Ptx.PtZ2

/-! Replay the installed suffix after state_fresh_tx with the post-allocation
state as its entry. The input typing and buffer conditions are stated at this
entry, so the final heap lower bound includes the fresh-state allocation. -/

set_option autoImplicit false
set_option maxRecDepth 100000
namespace TransactionSuffixFrontier
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem reanchor {E : PtE σ} (hp : PtPre E)
    (ts : GObj E.Γ0 E.s0 nmTs tTS)
    (tx : E.s0.locals.lookup (nm "tx") = some (.val (.word E.tx)))
    (idx : E.s0.locals.lookup (nm "index") = some (.val (.word E.idx))) :
    PA E (En0 E) (S0 E) E.s0 := by
  obtain ⟨q, hq, hqp⟩ := hp.hp
  have ho := ordered_of_G hp.hG hq
  have hr : PtRun noD E.Γ0 E.s0 E.p0 E.Γ0 E.s0 q := by
    rw [hqp]
    exact ⟨⟨q, hq, Or.inr rfl⟩, hq, gp0_mono ho le_rfl,
      fun o ho => ⟨o, ho, rfl, rfl, le_rfl⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hp.hG,
      fun _ _ _ => rfl, fun a _ => ⟨fun _ => rfl, fun v hv => by simp [noD] at hv⟩,
      hp.hJ, hp.hev, hp.hcc, gp0_ord ho, fun _ _ => rfl⟩
  refine ⟨⟨noD, E.Γ0, q, hr, fun _ h => absurd rfl h, ?_⟩, ?_⟩
  · intro f hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · obtain ⟨o, h, hb, ht⟩ := hp.tx
      exact ⟨o, h, hb, ht, Nat.zero_le _⟩
    · exact hp.gbs
    · exact hp.gba
    · exact hp.gbk
    · exact hp.gbi
    · exact hp.gbs2
    · exact hp.gsk
    · exact ts
  · intro x v h
    unfold En0 at h
    split_ifs at h with h1 h2
    · cases h; subst h1; exact tx
    · cases h; subst h2; exact idx

theorem suffix_mono {M : Nat} (hpm : HypPmM σ M) (hcf : HypCfL σ)
    (hR : HypRcpt σ) (hgs : Bal.HGS σ) (hEnc : HypEncTx σ)
    {Γ : Gam} {s : State σ} {p : Ptrs} {tx idx bo be txs rcs : BitVec 64}
    (hG : G guestC (HR σ) Γ s) (hpre : PtPreD2 M Γ s p tx idx bo be txs rcs)
    (hts : GObj Γ s nmTs tTS)
    (htx : s.locals.lookup (nm "tx") = some (.val (.word tx)))
    (hidx : s.locals.lookup (nm "index") = some (.val (.word idx))) :
    Hoare σ guestCtx (fun t => t = s) ptS0
      (fun r t => r = some (.returned (.val (.word 0))) ∧ ∃ p', ptrsOf t = some p' ∧ p.hp ≤ p'.hp) := by
  let E := entryE Γ s p tx idx bo be txs rcs
  have hPX := ptPreX_of hG hpre
  have init := reanchor hPX.toPtPre hts htx hidx
  have h := chain1 hPX.toPtPre hEnc (locIns_ptEnd E) (cx0_enter E)
    (fun En' S' rp rl buf n CV w a b c pr mg rs C3 =>
      chain2 hPX hpre.own hpre.coinR hpre.hM hpm (pcm_funSpec hpm hcf) hR hgs C3.2.2.2.1 C3)
  intro t hc heq ht
  subst t
  obtain ⟨hr, hend⟩ := h s hc init ht
  obtain ⟨Γ', hpost⟩ := ptPost_of_end hend
  obtain ⟨p', hp', _⟩ := hpost.hG
  exact ⟨hr, p', hp', (hpost.keep p p' hpre.hp hp' (ordered_of_G hG hpre.hp)).1⟩

#print axioms reanchor
#print axioms suffix_mono
end TransactionSuffixFrontier
