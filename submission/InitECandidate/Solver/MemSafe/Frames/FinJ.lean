import InitECandidate.Solver.MemSafe.Frames.FinSpec

/-!
# `finish_child`: the bundle entry `finSum`

**`fin_jSpec`**: `JSpec … "finish_child" (vs = [] ∧ PreFin) QStep` — on a return the parent's
chain holds for the surviving objects and `Φ` dropped; `finish_child` never raises `EvmErr`
(so the `EvmErr` clause of `QStep` is vacuous). From the callee facts `FinHyps` and the release
law `RelCfg`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem mem_of_getLast' {α : Type} {a : α} : ∀ {l : List α}, l.getLast? = some a → a ∈ l
  | [], h => by cases h
  | [_], h => by cases h; exact List.mem_singleton_self _
  | _ :: c :: l, h => List.mem_cons_of_mem _ (mem_of_getLast' (l := c :: l) h)

/-- The facts tracked through the local loads: only the locals changed, and the loaded words. -/
def DL (s0 : State σ) (lw : List (MlS × BitVec 64)) (u : State σ) : Prop :=
  (∃ l, u = { s0 with locals := l }) ∧ ∀ xw ∈ lw, u.locals.lookup xw.1 = some (.val (.word xw.2))

/-- One local load `var n = e; k`. -/
theorem dl_dec {s0 : State σ} {lw : List (MlS × BitVec 64)} {n : MlS} {e : ExpHOL 64}
    {w : BitVec 64} {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hn : n ∉ lw.map Prod.fst)
    (hv : ∀ u, DL s0 lw u → ∀ v, ev u e = some v → v = .val (.word w))
    (hQ : ∀ r t (l : Locs), Q r t → Q r { t with locals := l })
    (hk : HoareG σ X (DL s0 ((n, w) :: lw)) k Q) :
    HoareG σ X (DL s0 lw) (.dec n .one e k) Q := by
  refine hoareG_dec fun s _ hs v hev _ => ?_
  obtain rfl := hv s hs v hev
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ h => hQ r t _ h)
  subst ht
  obtain ⟨⟨l, rfl⟩, hlw⟩ := hs
  refine ⟨⟨_, rfl⟩, fun xw hxw => ?_⟩
  rcases List.mem_cons.mp hxw with rfl | hxw
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (fun h => hn (by rw [h]; exact List.mem_map_of_mem hxw))]; exact hlw xw hxw

theorem dl_lload {s0 : State σ} {lw : List (MlS × BitVec 64)} {c : BitVec 64}
    (hrec : lw.getLast? = some (nm "rec", c)) (k : Nat) :
    ∀ u, DL s0 lw u → ∀ v, ev u (lLoad "rec" k) = some v → v = .val (.word (fld s0.memory c k)) := by
  intro u ⟨⟨l, hu⟩, hlw⟩ v hv
  rw [ev_lLoad_eq (hlw _ (mem_of_getLast' hrec)) hv, hu]

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)

include Hy

/-- **`finish_child`'s bundle entry.** -/
theorem fin_jSpec0 {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    (M : Nat) :
    JSpec σ X C H (nm "finish_child") (fun vs s Γ => vs = [] ∧ PreFinX C tEV tCK P R M vs s Γ)
      (fun _ s _ r t Γ' =>
        ((∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t < Phi s) ∧
          (∀ v, r = .exception nmEvmErr v → ChainX C tEV tCK P R Γ' t ∧ Phi t + 1 ≤ Phi s + act t)) ∧
        (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .exception nmEvmErr v → JrNZ t) ∧
        (∀ v, r = .returned v → RootK s t) ∧ (∀ v, r = .exception nmEvmErr v → RootK s t)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨_, ⟨⟨fs, hch, hx⟩, hΦM, hk⟩, hJ0⟩
  rw [Hy.code] at hl
  obtain ⟨rfl, -, rfl⟩ := lookupCode_zero code_fin hl
  -- the chain: a child and its parent
  obtain ⟨e, c, rest0, rfl, hev, hcc, hic⟩ := hch.chain
  obtain ⟨c1, hc1, hk1⟩ := hk
  rw [hcc, Option.some.injEq] at hc1
  subst hc1
  obtain ⟨e', c', rest, rfl⟩ : ∃ e' c' rest, rest0 = (e', c') :: rest := by
    cases hic with
    | base h0 => exact absurd h0.1 hk1
    | step _ hp _ =>
        cases rest0 with
        | nil => simp at hp
        | cons f rest => exact ⟨f.1, f.2, rest, rfl⟩
  -- the post of the body
  have hpost : FinPostC C H tEV tCK P R s0 (some r) (evaluateHOLFiniteState s0 finBody).2 := by
    have H0 : HoareG σ X (DL s0 []) finBody (FinPostC C H tEV tCK P R s0) := by
      have hQ : ∀ r t (l : Locs), FinPostC C H tEV tCK P R s0 r t →
          FinPostC C H tEV tCK P R s0 r { t with locals := l } := fun r t l h => finPostC_locals hH h l
      have hgv : ∀ (lw : List (MlS × BitVec 64)) (g : MlS) (w : BitVec 64), gword s0 g = some w →
          ∀ u, DL s0 lw u → ∀ v, ev u (gv g) = some v → v = .val (.word w) := by
        intro lw g w hw u ⟨⟨l, hu⟩, _⟩ v hv
        subst hu
        have : s0.globals.lookup g = some v := hv
        rw [gword_some hw] at this
        exact (Option.some.inj this).symm
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (hgv _ _ _ hcc) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (hgv _ _ _ hev) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 0) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 16) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 40) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 64) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 48) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 56) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 72) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 80) hQ ?_
      refine dl_dec (by simp only [List.map_cons, List.map_nil] <;> decide) (dl_lload rfl 88) hQ ?_
      rintro u hu ⟨⟨l, rfl⟩, hlw⟩
      have hlk : ∀ x w, (x, w) ∈ [(nm "contract_address", fld s0.memory c 88),
          (nm "out_size", fld s0.memory c 80), (nm "out_start", fld s0.memory c 72),
          (nm "child_mem_mark", fld s0.memory c 56), (nm "child_mark", fld s0.memory c 48),
          (nm "new_account_charged", fld s0.memory c 64), (nm "msg", fld s0.memory c 40),
          (nm "kind", fld s0.memory c 16), (nm "parent", fld s0.memory c 0), (nm "child", e),
          (nm "rec", c)] → l.lookup x = some (.val (.word w)) := fun x w h => hlw (x, w) h
      have hpa : PA C H tEV tCK P R s0 e c ((e', c') :: rest) l { s0 with locals := l } :=
        ⟨fun x _ => rfl, jrNZ_locals hJ0 l, Γ, (G_locFree hH s0 l s0.clock).mpr hG,
          chainL_congr (s := s0) (s' := { s0 with locals := l }) rfl rfl hch,
          by have : Phi { s0 with locals := l } = Phi s0 := phi_locFree s0 _ _
             rw [this], fun j _ => rfl,
          chainE_congr (s := s0) (s' := { s0 with locals := l }) rfl rfl hx⟩
      exact finTail_hoare Hy hR (hlk _ _ (by simp)) (hlk _ _ (by simp)) (hlk _ _ (by simp))
        (hlk _ _ (by simp)) (hlk _ _ (by simp)) (hlk _ _ (by simp)) (hlk _ _ (by simp))
        (hlk _ _ (by simp)) hch.chain _ hu hpa
    have := H0 s0 hs0 ⟨⟨s0.locals, rfl⟩, fun _ h => by simp at h⟩ (by rw [hr]; exact hg)
    rw [hr] at this
    exact this
  obtain ⟨Γ', hG', hret, hne⟩ := hpost r rfl hna
  exact ⟨Γ', hG', ⟨fun v hv => ⟨(hret v hv).1, (hret v hv).2.1⟩, fun v hv => absurd hv (hne v)⟩,
    fun v hv => (hret v hv).2.2.1, fun v hv => absurd hv (hne v), fun v hv => (hret v hv).2.2.2, fun v hv => absurd hv (hne v)⟩

end steps

/-- `FinHyps` at `PK`: everything else in it reads `P` only through a projection. -/
theorem finHyps_keep {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw}
    (Hy : FinHyps σ X C H tEV tCK P R Ic W) (L : Gam) (h0 : Nat) (m0 : Mem) :
    FinHyps σ X C H tEV tCK (PK C L h0 m0 P) R Ic W :=
  { Hy with
    xcfg := xCfg_keep Hy.xcfg Hy.drv.fc.blkHeap L h0 m0
    icX := fun Γ m p ch pa h1 h2 h3 => Hy.icX Γ m p ch pa h1.1 h2.1 h3
    cfX := fun Γ m p ch pa h1 h2 => Hy.cfX Γ m p ch pa h1.1 h2
    logStep := logStep_keep Hy.logStep Hy.drv.fc.blkHeap L h0 m0 }

/-- **`finish_child`'s bundle entry**, with `KeepH`: run the proof at `PK`. -/
theorem fin_jSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw}
    (Hy : FinHyps σ X C H tEV tCK P R Ic W) {Ref : Gam → State σ → Obj → BitVec 64 → Prop}
    (hR : RelCfg C H tEV Ref) (M : Nat) :
    JSpec σ X C H (nm "finish_child") (fun vs s Γ => vs = [] ∧ PreFinX C tEV tCK P R M vs s Γ)
      (QStepX C tEV tCK P R) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨hv0, ⟨⟨fs, hch, hx⟩, hΦM, hk⟩, hJ0⟩
  obtain ⟨p, hp, -, -⟩ := id hG
  have hx' : ChainE (PK C Γ p.hp s0.memory P) R Γ s0 fs := by
    refine ⟨fun q hq f hf => ?_, hx.2⟩
    obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
    exact ⟨hx.1 q hq f hf, Nat.le_refl _, keepL_refl C Γ _, bg_refl C Γ _⟩
  obtain ⟨Γ', hG', ⟨h1, h2⟩, h3, h4, h5, h6⟩ := fin_jSpec0 (finHyps_keep Hy Γ p.hp s0.memory) hR M vs body callee rs hl
    s0 hs0 hloc r hr hg hna Γ hG ⟨hv0, ⟨⟨fs, hch, hx'⟩, hΦM, hk⟩, hJ0⟩
  obtain ⟨q', hq', -⟩ := id hG'
  refine ⟨Γ', hG', ⟨fun v hv => ⟨(chainX_PK hp ⟨q', hq'⟩ (h1 v hv).1).2.2, (h1 v hv).2⟩,
      fun v hv => ⟨(chainX_PK hp ⟨q', hq'⟩ (h2 v hv).1).2.2, (h2 v hv).2⟩⟩, h3, h4,
    fun v hv => (chainX_PK hp ⟨q', hq'⟩ (h1 v hv).1).1, fun v hv => (chainX_PK hp ⟨q', hq'⟩ (h2 v hv).1).1, h5, h6,
    fun v hv => (chainX_PK hp ⟨q', hq'⟩ (h1 v hv).1).2.1, fun v hv => (chainX_PK hp ⟨q', hq'⟩ (h2 v hv).1).2.1⟩

end InitECandidate.Solver.MemSafe.Frames
