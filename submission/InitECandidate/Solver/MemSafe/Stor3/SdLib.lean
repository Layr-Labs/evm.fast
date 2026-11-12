import InitECandidate.Solver.MemSafe.Stor3.SdBody
import InitECandidate.Solver.MemSafe.Stor3.Gas

set_option autoImplicit false

/-!
# Locals bookkeeping for `op_selfdestruct` (sonnet-store3)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Spec.Mpt.Leaves (ev_add2_inv')

variable {σ : Type}

/-- `if warm == 0 { gas_cost = gas_cost + 3000 }` from `gas_cost = 5000`: `gas_cost` stays `≥ 1`, the other
locals are kept, and `K` is kept. -/
theorem hl_iteGas {K : Nat → State σ → Prop} (hK : KOK K) {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0)
    (hg : u0.locals.lookup (nm "gas_cost") = some (.val (.word 5000))) :
    HoareG σ guestCtx (fun t => t = u0)
      (.ite (.cmp .equal (lv (nm "warm")) (cw 0))
        (.assign .local (nm "gas_cost") (.op .add [lv (nm "gas_cost"), cw 3000])) .skip)
      (fun ro t => ro = none ∧ K (bd b) t ∧
        (∃ g, t.locals.lookup (nm "gas_cost") = some (.val (.word g)) ∧ 1 ≤ g.toNat) ∧
        ∀ x, x ≠ nm "gas_cost" → t.locals.lookup x = u0.locals.lookup x) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_assign fun s _ hP v hv hvalid => ?_
    obtain ⟨rfl, -⟩ := hP
    obtain ⟨y, z, hy, hz, hx⟩ := ev_add2_inv' hv
    rw [ev_lv, hg] at hy
    rw [ev_cw] at hz
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hy hz hx
    subst hy hz hx
    refine ⟨rfl, kok_loc hK hu _, ⟨_, lk_set_self _ _ _, by decide⟩, fun x hx => ?_⟩
    rw [lk_set_ne _ _ (Ne.symm hx)]
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, ⟨_, hg, by decide⟩, fun x _ => rfl⟩


/-- `if c { state_gas = 183600; aw = 9000 }`: `K` is kept, the other locals are kept. -/
theorem hl_iteSa {K : Nat → State σ → Prop} (hK : KOK K) {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0) (c : ExpHOL 64) :
    HoareG σ guestCtx (fun t => t = u0)
      (.ite c (.seq (.assign .local (nm "state_gas") (cw 183600))
        (.assign .local (nm "aw") (cw 9000))) .skip)
      (fun ro t => ro = none ∧ K (bd b) t ∧
        ∀ x, x ≠ nm "state_gas" → x ≠ nm "aw" → t.locals.lookup x = u0.locals.lookup x) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_seq (R := fun ro t => ro = none ∧ K (bd b) t ∧
      ∀ x, x ≠ nm "state_gas" → t.locals.lookup x = u0.locals.lookup x) ?_
      (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assign fun s _ hP v hv hvalid => ?_
      obtain ⟨rfl, -⟩ := hP
      refine ⟨rfl, kok_loc hK hu _, fun x hx => ?_⟩
      rw [lk_set_ne _ _ (Ne.symm hx)]
    · refine hoareG_assign fun s _ hP v hv hvalid => ?_
      obtain ⟨-, hs, hl⟩ := hP
      refine ⟨rfl, kok_loc hK hs _, fun x hx1 hx2 => ?_⟩
      rw [lk_set_ne _ _ (Ne.symm hx2)]
      exact hl x hx1
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, fun x _ _ => rfl⟩

/-! ## The shifted tracker `K2`

After a charge (`d = 1`) the rebased run `K'` (base: the current state) forgets the drop; `K2 d := K' (d - 1)`
puts it back: the calls of the checker keep `K2`, and `K2` converts to the original tracker. -/

def K2 (K' : Nat → State σ → Prop) (d : Nat) (u : State σ) : Prop := K' (d - 1) u

theorem kOK_K2 {K' : Nat → State σ → Prop} (hK : KOK K') : KOK (K2 K') where
  congr := fun d u t h hm hg hd hbe => hK.congr _ u t h hm hg hd hbe
  mono := fun d d' u h hle => hK.mono _ _ u h (by omega)

theorem bd_sub_one (b : Bool) : bd b - 1 = bd false := by cases b <;> rfl

theorem rbd_le_one (r : PanSemResultExact 64) : rbd r ≤ 1 := by cases r <;> simp [rbd]

theorem cbd_le_one (b : Bool) (r : PanSemResultExact 64) : cbd b r ≤ 1 := by
  cases r <;> cases b <;> simp [cbd, bd]

theorem callCl_false {E : GEnv} {b b' : Bool} {f : MlS} {args : List (ExpHOL 64)}
    (h : callCl E b f args = some b') : ∃ b'', callCl E false f args = some b'' := by
  by_cases hf : f = nm "charge_gas"
  · simp only [callCl, hf, if_true] at h ⊢
    split at h
    · exact ⟨_, rfl⟩
    · exact ⟨_, rfl⟩
    · cases h
  · simp only [callCl, hf, if_false] at h ⊢
    split at h
    · rename_i f' sg cs hfind
      split at h
      · rename_i hok
        exact ⟨false, by simp [hfind, hok]⟩
      · cases h
    · cases h

theorem callSem_K2 {X : Ctx 64} {E : GEnv} {K' : Nat → State σ → Prop} (hK : KOK K')
    (hC : CallSem σ X E K') : CallSem σ X E (K2 K') := by
  intro b b' f args h
  obtain ⟨b'', hb''⟩ := callCl_false h
  obtain ⟨R, hR, hstep⟩ := hC false b'' f args hb''
  refine ⟨R, hR, fun u0 hu vs hvs callee r st hRr hg hna => ?_⟩
  have hu' : K' (bd false) u0 := by
    have : bd b - 1 = bd false := bd_sub_one b
    unfold K2 at hu; rwa [this] at hu
  have := hstep u0 hu' vs hvs callee r st hRr hg hna
  exact hK.mono _ _ _ this (by have := cbd_le_one b' r; omega)

/-- A `K'` Hoare triple at status `false` gives the `K2` one at any status. -/
theorem hl_K2 {K' : Nat → State σ → Prop} (hK : KOK K') {b : Bool} {P : State σ → Prop}
    {p : ProgHOL 64} {l : Locs} (h : HoareG σ guestCtx P p (HL K' false l)) :
    HoareG σ guestCtx P p (HL (K2 K') b l) := by
  refine hoareG_conseq h (fun _ _ h => h) (fun r t _ _ hq => ⟨⟨fun h0 => ?_, fun r' hr' hna => ?_⟩, hq.2⟩)
  · have := hq.1.1 h0
    unfold K2; rwa [bd_sub_one]
  · have := hq.1.2 r' hr' hna
    exact hK.mono _ _ _ this (by omega)

theorem K2_of {K' : Nat → State σ → Prop} {b : Bool} {u : State σ} (h : K2 K' (bd b) u) :
    K' (bd false) u := by
  unfold K2 at h; rwa [bd_sub_one] at h

theorem K2_mk {K' : Nat → State σ → Prop} {b : Bool} {u : State σ} (h : K' (bd false) u) :
    K2 K' (bd b) u := by
  unfold K2; rwa [bd_sub_one]

/-- Back to the original tracker. -/
theorem gq_K2 {K K' : Nat → State σ → Prop} (hK : KOK K)
    (hb : ∀ d t, K' d t → K (d + 1) t) {b : Bool} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (h : GQ (K2 K') b ro t) : GQ K b ro t := by
  refine ⟨fun h0 => hK.mono _ _ _ (hb _ _ (h.1 h0)) (by omega),
    fun r hr hna => hK.mono _ _ _ (hb _ _ (h.2 r hr hna)) (by omega)⟩

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_iteGas
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_iteSa
#print axioms InitECandidate.Solver.MemSafe.Stor3.callSem_K2
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_K2
#print axioms InitECandidate.Solver.MemSafe.Stor3.gq_K2
