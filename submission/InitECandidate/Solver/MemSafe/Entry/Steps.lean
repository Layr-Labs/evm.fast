import InitECandidate.Solver.MemSafe.Entry.Code
import InitECandidate.Solver.MemSafe.Wire.FinTableR
import InitECandidate.Solver.MemSafe.Frames.ProJL
import InitECandidate.Solver.MemSafe.Frames.StartXJL
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL
import InitECandidate.Solver.MemSafe.Frames.FinCost
import InitECandidate.Solver.Band.Rules

/-!
# Entry: the call steps of `process_message` on the thread invariant `PI M`

* `P0 M msg s`: the state before `frame_open`: `G`, the allocator, `FoPre` (the message facts,
  `ev` / `cur_cont` words, `JrNZ`, `msg_gas + 2 ≤ M`) and the `msg` local.
* `pi_fo`: `frame_open(msg, 0)` takes `P0 M msg` to `PI M` (`preInvX_open`).
* `pi_snap`: `state_snapshot()` keeps `PI M`.
* `pi_d0`: `depth0_prepare()` (the hypothesis `D0Spec`) keeps `PI M` on a return.
* `pi_fs`: `frame_start()` keeps `PI M` on a return.
* The generic `PI`-threading rules for `dec`, `decCall`, `callD`, and the cost versions.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## Generic rules on `PI M` -/

/-- The post "normal completion keeps `PI M`". -/
def PIQ (M : Nat) : Option (PanSemResultExact 64) → State σ → Prop := fun r t => r = none → PI M t

theorem hoare_PI_dec {M : Nat} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64}
    (hk : Hoare σ guestCtx (PI M) k (PIQ M)) :
    Hoare σ guestCtx (PI M) (.dec n sh e k) (PIQ M) := by
  refine hoare_dec fun s hs hP v hv hsh => ?_
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht; exact pi_set hP n v
  · intro hr; exact pi_loc (hq hr) _ t.clock

theorem hoare_PI_decCall {M : Nat} {rn f : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (hstep : ∀ (u : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), PI M u →
      R [] (callEntryStateHOLFinite u callee) (.returned v) st → PI M st)
    (hk : Hoare σ guestCtx (PI M) k (PIQ M)) :
    Hoare σ guestCtx (PI M) (.decCall rn sh f [] k) (PIQ M) := by
  refine hoare_decCallS hf fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain rfl := evs_zero hvs
  have hst' := hstep s callee v st hP hR
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht; exact pi_set (pi_loc hst' s.locals st.clock) rn v
  · intro hr; exact pi_loc (hq hr) _ t.clock

theorem hoare_PI_callD {M : Nat} {f : MlS}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (hstep : ∀ (u : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), PI M u →
      R [] (callEntryStateHOLFinite u callee) (.returned v) st → PI M st) :
    Hoare σ guestCtx (PI M) (.call (some (none, none)) f []) (PIQ M) := by
  refine hoare_callD hf fun s hs hP vs hvs callee v st hR hst => ?_
  obtain rfl := evs_zero hvs
  exact fun _ => pi_loc (hstep s callee v st hP hR) _ st.clock

theorem costP_PI_dec {M : Nat} {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {k : ProgHOL 64} {B : Nat}
    (hk : Inv.CostP σ guestCtx (PI M) k B) :
    Inv.CostP σ guestCtx (PI M) (.dec n sh e k) B :=
  Inv.costP_dec fun s hs hP v hv hsh => hk.pre fun t _ ht => by subst ht; exact pi_set hP n v

theorem costP_skip_seq {P : State σ → Prop} {k : ProgHOL 64} {B : Nat}
    (hk : Inv.CostP σ guestCtx P k B) : Inv.CostP σ guestCtx P (.seq .skip k) (0 + B) :=
  Inv.costP_seq (R := P) (Inv.costP_of_cost cost_skip) (hoare_skip fun s _ h _ => h) hk

/-- `var rn = f(); k` against a conditional / table entry of `f` and a value spec `R`. -/
theorem costP_decCall0 {P P' : State σ → Prop} {rn f : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ s, InCtx s guestCtx → P s → ∀ callee, PreC [] (callEntryStateHOLFinite s callee))
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hR : FunSpec σ guestCtx f R)
    (hP' : ∀ (s : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), P s →
      R [] (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      P' (setVarHOLFinite rn v { st with locals := s.locals }))
    (hk : Inv.CostP σ guestCtx P' k Bk) :
    Inv.CostP σ guestCtx P (.decCall rn sh f [] k) (1 + Bf + Bk) :=
  Band.costP_decCall hf
    (fun s hs hp vs hvs callee => by obtain rfl := evs_zero hvs; exact hpreC s hs hp callee) hR
    (fun s hs hp vs hvs callee v st hR' _ hsh => by
      obtain rfl := evs_zero hvs
      exact hk.pre fun t _ ht => by subst ht; exact hP' s callee v st hp hR' hsh)

/-! ## `state_snapshot` -/

def sgSn : Sig := ⟨[], [], [], false⟩

/-- The value relation of `state_snapshot`: its capability summary and `frame_mem_ptr` kept. -/
def SnapR (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) :
    Prop :=
  SumRelX guestC (Hooks.guestHooksR (σ := σ)) sgSn (fun _ s Γ => ReqOK [] s Γ)
    (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
  (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame)

theorem snap_spec : FunSpec σ guestCtx (nm "state_snapshot") SnapR :=
  FunSpec.and (sumSpecA_relX (tabJL_guestR (nm "state_snapshot") sgSn [] (by decide_cbv)))
    (Wire.keepsFp_guest (f := nm "state_snapshot") (by decide_cbv))

theorem pi_snap {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PI M u)
    (h : SnapR [] (callEntryStateHOLFinite u callee) (.returned v) st) : PI M st := by
  obtain ⟨hR, hfk⟩ := h
  obtain ⟨Γ, p, hG, hp, hpre⟩ := pi_entry hP callee
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (by simp [Abortive]) Γ hG
    ⟨p, hp, argsOK_any (by simp [sgSn]) rfl⟩ (fun c hc => absurd hc (by simp))
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  have hfp : p'.fp = p0.fp := fpQ_of_fp (hfk (by simp [Good]) (by simp [Abortive])) p0 p' hp hc.2.1
  exact pi_core (by simp [sgSn]) (by simp [sgSn]) hG hpre
    (sumCore_pwM hc fun a h => ⟨h.1, by simpa [CapPW] using h.2⟩) hfp

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pi_snap
