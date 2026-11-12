import InitECandidate.Solver.MemSafe.Init.Main2

/-!
# Init: `main`'s walk, part 3 (the `root` allocation)
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

/-- After `decode_host_input`. -/
def PD (s : State σ) : Prop :=
  ∃ (Γ : Gam) (p : Ptrs) (S : BitVec 64), G guestC (HR σ) Γ s ∧ EvCc s ∧ ptrsOf s = some p ∧
    Below Γ p.hp ∧ s.locals.lookup (nm "si") = some (.val (.word S)) ∧ ∃ o ∈ Γ, o.base = S ∧ o.ty = tSI

theorem funSpec_be {X : Ctx 64} (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact Spec.Inv.be_preserved s body

theorem tb_alloc : (Shards.finalState.1.lookup (nm "alloc")).isSome = true := by decide +kernel

theorem cost_root_step {sh : ShapeHOL} {k : ProgHOL 64} {B2 : Nat}
    (hk : Inv.CostP σ guestCtx PD2 k B2) :
    Inv.CostP σ guestCtx PD (.decCall (nm "root") sh (nm "alloc") [.const 32] k) (1 + tbN "alloc" + B2) := by
  refine Band.costP_decCall (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost (calleeCost_tb "alloc" tb_alloc))
    (fun _ _ _ _ _ _ => trivial) (R := fun vs s r t => (Good (some r) → ∀ n p, vs = [.val (.word n)] →
        ptrsOf s = some p → p.Ordered →
          t.memory = s.memory ∧ (∀ g, g ≠ Region.global .heap → t.globals.lookup g = s.globals.lookup g) ∧
          ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
            ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
              Region.Live p' .heap q.toNat n.toNat ∧ ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a) ∧
        t.be = s.be)
    ((allocSpec_alloc (σ := σ) (X := guestCtx) guestCtx_code).and (funSpec_be _)) ?_
  intro s hs hP vs hvs callee v st ⟨hA, hbe⟩ hst hsh
  refine (hk).pre fun t _ ht => ?_
  subst ht
  obtain ⟨Γ, p, S, hG, hE, hp, hbl, hsi, o, ho, hb, ht⟩ := hP
  have : evs s [ExpHOL.const 32] = some [.val (.word 32)] := evs_cons (ev_const _) evs_nil
  rw [this] at hvs
  obtain rfl := (Option.some.inj hvs).symm
  have hg : (callEntryStateHOLFinite s callee).globals = s.globals := rfl
  have hp0 : ptrsOf (callEntryStateHOLFinite s callee) = some p :=
    (AllocImpl.ptrsOf_congr (s := s) (t := callEntryStateHOLFinite s callee) hg).trans hp
  have hord : p.Ordered := by
    obtain ⟨p0, hp0', hord, -⟩ := hG
    rw [hp] at hp0'; cases hp0'; exact hord
  obtain ⟨hmem, hgo, p', hp', hord', hmono, hq⟩ := hA (by simp [Good]) 32 p rfl hp0 hord
  obtain ⟨q, rfl, hq8, hlive, hfresh⟩ := hq _ rfl
  have hG0 : G guestC (HR σ) Γ (callEntryStateHOLFinite s callee) :=
    Frames.G_congr Hooks.guestHooksR_lawful rfl hg rfl rfl hG
  have hG1 : G guestC (HR σ) Γ st := Helpers.G_alloc Hooks.guestHooksR_lawful Annot.drv_allocG hG0 hp0 hp' hord' hmono
    (fun g h1 h2 h3 => hgo g h1) (by rw [hst.2.1]; exact hs.2.1.symm) hbe
    (fun a _ => by rw [hmem])
  have hpq : p.hp ≤ q.toNat := by
    by_contra hc
    refine hfresh q.toNat le_rfl (by simp) (Or.inl ⟨?_, ?_⟩)
    · simp only [Region.Live, heapBase] at hlive; exact hlive.1
    · omega
  have hgl : ∀ g, g ≠ gHeap → (setVarHOLFinite (nm "root") (.val (.word q)) { st with locals := s.locals }).globals.lookup g =
      s.globals.lookup g := fun g hg => hgo g hg
  have hgw : ∀ g, g ≠ gHeap → gword (setVarHOLFinite (nm "root") (.val (.word q)) { st with locals := s.locals }) g =
      gword s g := fun g hg => by unfold gword; rw [hgl g hg]
  have hlq := hlive
  simp only [Region.Live] at hlq
  have hord2 := hord'
  simp only [Ptrs.Ordered, heapEnd] at hord2
  refine ⟨Γ, p', S, q, Frames.G_congr Hooks.guestHooksR_lawful rfl rfl rfl rfl hG1, ?_,
    (AllocImpl.ptrsOf_congr (s := st) (t := setVarHOLFinite (nm "root") (.val (.word q)) { st with locals := s.locals }) rfl).trans hp',
    fun o' ho' => le_trans (hbl o' ho') hpq, hq8, hlq.1, by omega, by omega, ?_, ?_, o, ho, hb, ht⟩
  · obtain ⟨⟨e, he, he2⟩, ⟨c, hc, hc2⟩⟩ := hE
    exact ⟨⟨e, by rw [hgw nmEv (by decide)]; exact he, he2⟩, ⟨c, by rw [hgw nmCC (by decide)]; exact hc, hc2⟩⟩
  · show (s.locals.update (nm "root", .val (.word q))).lookup (nm "si") = _
    rw [lookup_update_ne _ _ (by decide)]; exact hsi
  · show (s.locals.update (nm "root", .val (.word q))).lookup (nm "root") = _
    exact lookup_update_self _ _ _

end InitECandidate.Solver.MemSafe.Init
