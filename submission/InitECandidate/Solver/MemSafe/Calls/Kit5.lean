import InitECandidate.Solver.MemSafe.Calls.Kit4
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL handlers' Hoare kit, part 5 (frames14): `extend_memory` keeping `EV_MSG`

**`hq_emX`**: `hq_em` with the running EV's message slot (`EV 112`, an extension slot, `prot`)
kept: `extend_memory`'s summary writes `prot` cells only in `EV 32 / 40`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- `extend_memory(x)` keeps `EV 112`. -/
theorem em_keep112 (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ}
    (hu : KC Bs d u0) {x : BitVec 64} (hx32 : x.toNat % 32 = 0)
    (hxb : (fld u0.memory e 32).toNat + x.toNat ≤ 2 ^ 40) {callee : Locs} {v : ValueHOL 64}
    {st : State σ} (hR : EmRel [.val (.word x)] (callEntryStateHOLFinite u0 callee) (.returned v) st) :
    fld st.memory e 112 = fld u0.memory e 112 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨hS, -⟩, -⟩ := hR
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, -⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  subst hob
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC Hooks.guestHooksR Γ1 (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some p1 := (ptrsOf_congr rfl).trans hrun.2.1
  have hcont : ∀ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p →
      (fld u0.memory o.base 24).toNat + (fld u0.memory o.base 40).toNat = p.fp :=
    fun p hp => hch.topMem o.base c rest hfs p ((ptrsOf_congr rfl).symm.trans hp)
  obtain ⟨Γ', q, q', hc, -⟩ := hS (by simp [Good]) Γ1 hGe
    ⟨p1, hpe, argsOK_any (by simp [Struct.sgEM]) rfl⟩
    ⟨⟨x, rfl, hx32, fun e' he' => by
        have hb := evObj_base hevo he'
        refine ⟨?_, fun p hp => ?_⟩
        · show (rd u0.memory (e'.cell 4)).toNat + _ ≤ _
          rw [Struct.cells_base hb]; exact hxb
        · show (rd u0.memory (e'.cell 3)).toNat + (rd u0.memory (e'.cell 5)).toNat = _
          rw [Struct.cells_base hb, Struct.cells_base hb]; exact hcont p hp⟩,
      fun c' hc' _ => by
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hc'
        subst hc'
        exact ⟨o, hevo.1, hevo.2.1, hevo.2.2⟩⟩
  have hpk := sumCore_prot hc hGe (fun a ha => absurd ha (argCells_any (by simp [Struct.sgEM])))
  obtain ⟨q0, hq0, hord, hL, -⟩ := id hG1
  have hsz := ev_size hF hL hevo.1 hevo.2.1
  have hcell := hpk (o.cell 14)
    ⟨o, hevo.1, 14, by unfold Obj.HasSlot; omega, by rw [hevo.2.1]; decide, rfl⟩
    (fun ⟨e', he', k, hk, ha⟩ => by
      have hb := evObj_base hevo he'
      rw [Struct.cells_base hb] at ha
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hk
      rcases hk with rfl | rfl
      · exact off_ne o.base (i := 112) (j := 32) (by decide) (by decide) (by decide) ha
      · exact off_ne o.base (i := 112) (j := 40) (by decide) (by decide) (by decide) ha)
  show rd st.memory (o.cell 14) = rd u0.memory (o.cell 14)
  unfold rd
  rw [hcell]
  rfl

/-- **`extend_memory(x); k`** on `KCall []`, also keeping `EV 112`. -/
theorem hq_emX (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat}
    {X : BitVec 64} {u0 : State σ} (hu : KC [] d u0) (hx : ev u0 x = some (.val (.word X)))
    (h32 : X.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X.toNat ≤ 2 ^ 40)
    (hk : ∀ st : State σ, KC [] d st →
      (fld st.memory e 32).toNat = (fld u0.memory e 32).toNat + X.toNat →
      (∀ j ∈ evProtSlots, j ∉ [4, 5] → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD (nm "extend_memory") [x]) k) QC := by
  have hvs0 : evs u0 [x] = some [.val (.word X)] := evs_cons hx evs_nil
  refine hq_callD (Q := QC) (funSpec_em (σ := σ)) (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st hR habn
    rw [hvs0] at hvs
    cases hvs
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨⟨v, hv⟩, -⟩ := gk_em hfs (kcall_gk hu) h32 hb hR (good_of_abn habn) hna
      exact absurd hv (Struct.abn_ne_ret habn v)
  · intro vs hvs callee v st hR
    rw [hvs0] at hvs
    cases hvs
    obtain ⟨-, hk1, hlen, hkeep⟩ := gk_em hfs (kcall_gk hu) h32 hb hR (by simp [Good])
      (not_abortive_ret v)
    exact hk st (kcall_of_gk hk1) hlen hkeep (em_keep112 hfs hu h32 hb hR)

end steps

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.em_keep112
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_emX
