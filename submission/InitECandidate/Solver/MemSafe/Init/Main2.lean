import InitECandidate.Solver.MemSafe.Init.DhGw

/-!
# Init: `main`'s walk, part 2 (the `verify` step and the `htr_new_payload_request` step)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

/-- The precondition of `verify_stateless_new_payload` at `main`'s call (no `JrNZ`). -/
def VerPre : List (ValueHOL 64) → State σ → Gam → Prop :=
  fun vs s Γ => EvCc s ∧ ∃ p, ptrsOf s = some p ∧ Att.RaPre0 vs s Γ p

/-- At the `verify` call. -/
def PV (s : State σ) : Prop :=
  ∃ (Γ : Gam) (p : Ptrs) (S : BitVec 64), G guestC (HR σ) Γ s ∧ EvCc s ∧ ptrsOf s = some p ∧
    s.locals.lookup (nm "si") = some (.val (.word S)) ∧ ∃ o ∈ Γ, o.base = S ∧ o.ty = tSI

theorem argsOK_any1 {C : Cfg} {Γ : Gam} {p : Ptrs} {a : ValueHOL 64} : ArgsOK C Γ p [.any] [a] :=
  ⟨rfl, fun i pt w hpt _ => by rcases i with _ | i <;> simp at hpt <;> subst hpt <;> trivial⟩

theorem evCc_congr {s t : State σ} (hg : t.globals = s.globals) (h : EvCc s) : EvCc t := by
  obtain ⟨⟨e, he, he2⟩, ⟨c, hc, hc2⟩⟩ := h
  exact ⟨⟨e, by rw [Frames.gword_congr hg]; exact he, he2⟩, ⟨c, by rw [Frames.gword_congr hg]; exact hc, hc2⟩⟩

theorem cost_verify_step {Bv : Nat}
    (hV : CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi VerPre Bv)
    {succ : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bk : Nat}
    (hk : ∀ (s : State σ) (v : ValueHOL 64) (st : State σ),
      Inv.CostP σ guestCtx (fun t => t = setVarHOLFinite succ v { st with locals := s.locals }) k Bk) :
    Inv.CostP σ guestCtx PV
      (.decCall succ sh (nm "verify_stateless_new_payload") [.var .local (nm "si")] k) (1 + Bv + Bk) := by
  refine Band.costP_decCall hV ?_ (funSpec_true _) (fun s hs hp vs hvs callee v st hR hst hsh => hk s v st)
  intro s hs ⟨Γ, p, S, hG, hE, hp, hsi, o, ho, hb, ht⟩ vs hvs callee
  have : evs s [ExpHOL.var VarKind.local (nm "si")] = some [.val (.word S)] :=
    evs_cons (by rw [ev_var_local]; exact hsi) evs_nil
  rw [this] at hvs
  obtain rfl := (Option.some.inj hvs).symm
  have hg : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
  refine ⟨Γ, p, Frames.G_congr Hooks.guestHooksR_lawful rfl hg rfl rfl hG,
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp, argsOK_any1,
    evCc_congr hg hE, p, (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp,
    S, rfl, o, ho, hb, ht⟩

/-- At the `htr_new_payload_request` call. -/
def PD2 (s : State σ) : Prop :=
  ∃ (Γ : Gam) (p : Ptrs) (S O : BitVec 64), G guestC (HR σ) Γ s ∧ EvCc s ∧ ptrsOf s = some p ∧
    Below Γ O.toNat ∧ O.toNat % 8 = 0 ∧ heapBase ≤ O.toNat ∧ O.toNat ≤ p.hp ∧ O.toNat ≤ 2 ^ 60 ∧
    s.locals.lookup (nm "si") = some (.val (.word S)) ∧ s.locals.lookup (nm "root") = some (.val (.word O)) ∧
    ∃ o ∈ Γ, o.base = S ∧ o.ty = tSI

theorem nmEv_PG : nmEv ∈ guestC.PG := by decide
theorem nmCC_PG : nmCC ∈ guestC.PG := by decide

theorem hoare_htr :
    Hoare σ guestCtx PD2
      (.call (some (none, none)) (nm "htr_new_payload_request") [.var .local (nm "si"), .var .local (nm "root")])
      (fun r t => r = none ∧ PV t) := by
  refine Spec.hoare_post (Spec.hoare_callD (awSpec_npr_guest (σ := σ)) ?_) (fun r t _ _ h => h)
  intro s hs ⟨Γ, p, S, O, hG, hE, hp, hbl, ho8, hhb, hOp, hO60, hsi, hroot, o, ho, hb, ht⟩ vs hvs callee v st hR hst
  have : evs s [ExpHOL.var VarKind.local (nm "si"), ExpHOL.var VarKind.local (nm "root")] =
      some [.val (.word S), .val (.word O)] :=
    evs_cons (by rw [ev_var_local]; exact hsi) (evs_cons (by rw [ev_var_local]; exact hroot) evs_nil)
  rw [this] at hvs
  obtain rfl := (Option.some.inj hvs).symm
  have hg : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
  have hp' : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp
  obtain ⟨Γ', p', hG', hp'', hExt, -, -, -, -, hPG, -⟩ := hR v rfl Γ O.toNat p
    (Frames.G_congr Hooks.guestHooksR_lawful rfl hg rfl rfl hG) hp' hbl ho8 hhb hOp
    ⟨O, by simp [argW, wordOf], le_refl _, hO60⟩
  have hgl : st.globals.lookup nmEv = s.globals.lookup nmEv := hPG nmEv nmEv_PG (by simp)
  have hgl2 : st.globals.lookup nmCC = s.globals.lookup nmCC := hPG nmCC nmCC_PG (by simp)
  refine ⟨rfl, Γ', p', S, Frames.G_congr Hooks.guestHooksR_lawful rfl rfl rfl rfl hG', ?_, hp'', hsi, ?_⟩
  · obtain ⟨⟨e, he, he2⟩, ⟨c, hc, hc2⟩⟩ := hE
    refine ⟨⟨e, ?_, he2⟩, ⟨c, ?_, hc2⟩⟩
    · unfold gword at he ⊢; dsimp only; rw [hgl]; exact he
    · unfold gword at hc ⊢; dsimp only; rw [hgl2]; exact hc
  · obtain ⟨o', ho', hb', ht', -⟩ := hExt o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩

end InitECandidate.Solver.MemSafe.Init
