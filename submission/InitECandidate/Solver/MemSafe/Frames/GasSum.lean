import InitECandidate.Solver.MemSafe.Frames.Top
import InitECandidate.Solver.MemSafe.Frames.BKeepTop

/-!
# Summaries of the gas functions, with their `Φ` effect

* **`charge_sumSpec`**: `charge_gas(a)` under `Chain`: `G` and `Chain` kept (same typing); a
  return lowers `Φ` by exactly `a` (`Phi t + a = Phi s`); the out-of-gas `EvmErr` leaves the
  memory (hence `Φ`) unchanged. `PW = True`: it writes `GAS_LEFT` (`prot`) and
  `REGULAR_GAS_USED` of the running frame.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The top frame of a chain and its records. -/
theorem top_objs {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {Γ : Gam}
    {s : State σ} {fs : List Frame} (hG : G C H Γ s) (hch : ChainL C tEV tCK Γ s fs) :
    ∃ p e c rest oe oc, ptrsOf s = some p ∧ p.Ordered ∧ Layout C p Γ ∧ fs = (e, c) :: rest ∧
      gword s nmEv = some e ∧ gword s nmCC = some c ∧ oe ∈ Γ ∧ oe.base = e ∧ oe.ty = tEV ∧
      oc ∈ Γ ∧ oc.base = c ∧ oc.ty = tCK ∧ 280 ≤ oe.size ∧ 104 ≤ oc.size ∧ e ≠ c := by
  have ⟨p, hps, hord, hL, _⟩ := hG
  obtain ⟨e, c, rest, hfs, he, hc, -⟩ := hch.chain
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  refine ⟨p, e, c, rest, oe, oc, hps, hord, hL, hfs, he, hc, hoe, hoeb, hoet, hoc, hocb, hoct,
    ev_size hF hL hoe hoet, ck_size hF hL hoc hoct, ?_⟩
  rw [← hoeb, ← hocb]
  exact base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)

theorem phi_congr {s t : State σ} {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {fs : List Frame}
    (hch : ChainL C tEV tCK Γ s fs) (hm : t.memory = s.memory) (hg : t.globals = s.globals) :
    Phi t = Phi s := by
  rw [phi_eq (chainOf_congr hm hg hch.chain), phi_eq hch.chain, hm]

/-- The active bit is kept when `RUNNING(ev)` and `CK_DONE(cur_cont)` are. -/
theorem act_keep {s t : State σ} {e c : BitVec 64} (he : gword s nmEv = some e)
    (hc : gword s nmCC = some c) (hg : t.globals = s.globals)
    (h32 : fld t.memory c 32 = fld s.memory c 32) (h104 : fld t.memory e 104 = fld s.memory e 104) :
    act t = act s := by
  rw [act_eq (by rw [gword_congr hg]; exact he) (by rw [gword_congr hg]; exact hc), act_eq he hc,
    h32, h104]

/-- **`charge_gas`'s summary with its `Φ` effect.** -/
theorem charge_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) :
    SumSpec σ X C H (nm "charge_gas") (sg1 []) (fun _ s Γ => Chain C tEV tCK Γ s)
      (fun _ _ Γ a => ¬ KCell C Γ a)
      (fun vs s _ r t Γ' => ∃ a, vs = [.val (.word a)] ∧ Chain C tEV tCK Γ' t ∧ act t = act s ∧
        ((r = .returned (.val (.word 0)) ∧ Phi t + a.toNat = Phi s) ∨
          (r = .exception nmEvmErr (.val (.word 4)) ∧ Phi t = Phi s))) := by
  refine FunSpec.mono (FunSpec.and (charge_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨fs, hch⟩
  obtain ⟨e, a, rfl, he, hglob, hcase⟩ := hE hg
  obtain ⟨p, e', c, rest, oe, oc, hps, hord, hL, hfs, he', hc, hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hch
  rw [he, Option.some.injEq] at he'
  subst he' hoeb hocb
  rcases hcase with ⟨hr, -, hm⟩ | ⟨hr, hle, hm⟩
  · -- out of gas: the memory is unchanged
    have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
      rw [hm]; exact modifiesOnly_refl _ _
    obtain ⟨p', hrun, hch', -⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
    have hp' : p' = p := by rw [hrun.1, Option.some.injEq] at hps; exact hps
    subst hp'
    exact ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod),
      ⟨a, rfl, ⟨fs, hch'⟩, act_keep he hc hglob (by rw [hm]) (by rw [hm]),
        Or.inr ⟨hr, phi_congr hch hm hglob⟩⟩⟩
  · have hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory := by
      rw [hm]
      unfold chargeMem
      refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _) ?_ _
      · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨23, by simp [evDriverSlots], rfl⟩
    obtain ⟨p', hrun, hch', hrest⟩ := top_write (gw := []) hF hG hch hfs hmod hglob hd hbe
    have hx : ∀ j, j < 280 → oc.base + BitVec.ofNat 64 32 ≠ oe.base + BitVec.ofNat 64 j :=
      fun j hj => cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm)
    have h64 : fld t.memory oe.base 64 = fld s.memory oe.base 64 - a := by
      rw [hm]; unfold chargeMem fld
      rw [rd_upd, if_neg (by simp), rd_upd, if_pos rfl]
    have h192 : fld t.memory oe.base 192 = fld s.memory oe.base 192 := by
      rw [hm]; unfold chargeMem fld
      rw [rd_upd, if_neg (by simp), rd_upd, if_neg (by simp)]
    have h104 : fld t.memory oe.base 104 = fld s.memory oe.base 104 := by
      rw [hm]; unfold chargeMem fld
      rw [rd_upd, if_neg (by simp), rd_upd, if_neg (by simp)]
    have h32 : fld t.memory oc.base 32 = fld s.memory oc.base 32 := by
      rw [hm]; unfold chargeMem fld
      rw [rd_upd, if_neg (hx 184 (by omega)), rd_upd, if_neg (hx 64 (by omega))]
    refine ⟨Γ, p', p', sumCore_of_run_bk rfl rfl hrun (bkeep_of_topCells hF hord hL hoe hoet hoc hoct hse hsc hmod), ⟨a, rfl, ⟨fs, hch'⟩,
      act_keep he hc hglob h32 h104, Or.inl ⟨hr, ?_⟩⟩⟩
    rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest,
      wt_eq, wt_eq]
    rw [h64, h192, h104, h32, BitVec.toNat_sub_of_le hle]
    have := hle
    rw [BitVec.le_def] at this
    omega

/-! ## Costs of the straight-line driver functions -/

theorem refill_cost (hC : X.code.lookup = guestCode) :
    CalleeCost σ X (nm "refill_frame_state_gas") (0 + (0 + (0 + 0))) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_refill hl
  exact cost_dec (cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
    (cost_seq (cost_store _ _) (cost_return _))))

theorem halt_cost (hC : X.code.lookup = guestCode) :
    CalleeCost σ X (nm "frame_halt") (0 + (0 + (0 + 0))) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_halt hl
  exact cost_seq (cost_store _ _) (cost_seq (cost_store _ _)
    (cost_seq (cost_store _ _) (cost_return _)))

/-- **`frame_exception`'s all-states cost** (the `Bundle` entry `excCost`): two calls. -/
theorem exc_cost (hC : X.code.lookup = guestCode) :
    CalleeCost σ X (nm "frame_exception") 2 := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_exc hl
  refine (cost_seq (cost_call (Bh := 0) (refill_cost hC) (fun _ _ _ _ h => by cases h))
    (cost_seq (cost_ite (cost_seq (cost_call (Bh := 0) (halt_cost hC) (fun _ _ _ _ h => by cases h))
        (cost_seq (cost_store _ _) (cost_store _ _))) (cost_store _ _))
      (cost_seq (cost_store _ _) (cost_return _)))).mono ?_
  simp

end InitECandidate.Solver.MemSafe.Frames
