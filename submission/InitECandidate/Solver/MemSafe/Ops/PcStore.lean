import InitECandidate.Solver.MemSafe.Frames.GkHoare

/-!
# A store into the running EV's PC slot keeps `GK` (sonnet-ops)

`gk_pcstore`: `st ev + 0, v` (EV slot 0, `PC`, a scalar slot) from a `GK` state keeps `GK` with the
same bound. Proof: `kc_core` applied to a fabricated footprint-free summary of the store
(`SumCore` with `PW = False`, as in `pcAdd_evSpec`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- A fabricated signature: no parameters, no globals written. -/
def sg0n : Sig := { params := [], grows := false }

/-- The `SumCore` of a PC store (`EV` slot 0 scalar, EV type untagged). -/
theorem sumCore_pcStore {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {s t : State σ}
    {p : Ptrs} (hG : G guestC H Γ s) (hps : ptrsOf s = some p) {oe : Obj} (hoe : oe ∈ Γ)
    (hoet : oe.ty = tEV) {x : BitVec 64}
    (hm : t.memory = upd s.memory (oe.base + BitVec.ofNat 64 0) x) (hglob : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) {vs : List (ValueHOL 64)}
    {PW : BitVec 64 → Prop} :
    SumCore guestC H sg0n PW Γ s vs (.returned (.val (.word 0))) t Γ p p := by
  have hH := hF.hooks
  have hpc : (guestC.ty tEV).slot 0 = .scalar := rfl
  have htg : guestC.tags.lookup tEV = none := by decide
  have hsz := hF.evSz
  obtain ⟨q, hps', hord, hL, hG4, hG5, hG6, hW⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hps.symm.trans hps')
  have hoesz : 8 ≤ oe.size := by
    have := (hL.1 oe hoe).2.2.2.1; rw [hoet] at this; have := hF.evSz; omega
  have hc0 : oe.base + BitVec.ofNat 64 0 = oe.cell 0 := by simp [Obj.cell]
  have hmod : ModifiesOnly (fun x => x = oe.cell 0) s.memory t.memory := by
    rw [hm, hc0]; exact modifiesOnly_upd (R := fun x => x = oe.cell 0) (modifiesOnly_refl _ _) rfl _
  have hG' : G guestC H Γ t := by
    refine G_modify hH hG (ptrsOf_congr hglob)
      (fun g _ _ => gword_congr hglob g) (fun g _ => by rw [hglob]) hd hbe hmod ?_ ?_ ?_
    · intro o ho k hk hx
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho hoe hk (by unfold Obj.HasSlot; omega) hx
      rw [hoet, hpc]; trivial
    · intro o ho htag hx
      obtain ⟨h0, hc⟩ := slot0 hL ho
      obtain ⟨rfl, -⟩ := cell_inj hord hL ho hoe h0 (by unfold Obj.HasSlot; omega) (hc.trans hx)
      rw [hoet, htg] at htag
      exact absurd htag (by simp)
    · intro o ho ⟨x, hx, hf⟩
      obtain ⟨o', ho', k', hk', hp', hx'⟩ := hH.1 Γ s o x ho (hW o ho) hf
      subst hx
      obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' hoe hk' (by unfold Obj.HasSlot; omega) hx'.symm
      rw [hoet, hpc] at hp'
      cases hp'
  refine ⟨hps, by rw [ptrsOf_congr hglob]; exact hps, mono_refl p, ext_refl Γ,
    newFresh_refl Γ p, hG', fun x hx => hmod x fun h => hx (Or.inl ⟨oe, hoe, 0,
      by unfold Obj.HasSlot; omega, by rw [hoet, hpc]; simp, h⟩),
    fun g _ _ => by rw [hglob], fun _ => newFresh_refl Γ p, fun v _ i rt w hrt => ?_⟩
  simp [sg0n] at hrt

/-- **A PC store keeps `GK`** with the same bound. -/
theorem gk_pcstore {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0)
    (v : BitVec 64) :
    GK H gw Γ0 s0 p0 fs d { u0 with memory := upd u0.memory (e + BitVec.ofNat 64 0) v } := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  let ent : State σ := callEntryStateHOLFinite u0 u0.locals
  let st : State σ := { ent with memory := upd u0.memory (e + BitVec.ofNat 64 0) v }
  have hR : SumRelX guestC H sg0n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ False) (fun _ _ _ _ _ _ => True) []
      ent (.returned (.val (.word 0))) st := by
    intro _ _ Γ hG ⟨p, hps, _⟩ ⟨oe, hoe, hoet, hoeg⟩
    have he0 : gword ent nmEv = some e := by
      show gword u0 nmEv = some e
      rw [← hob]; exact hevo.2.2
    have hbase : oe.base = e := Option.some.inj (hoeg.symm.trans he0)
    have hmm : st.memory = upd ent.memory (oe.base + BitVec.ofNat 64 0) v := by
      rw [hbase]; exact rfl
    exact ⟨Γ, p, p, sumCore_pcStore hF hG hps hoe hoet hmm rfl rfl rfl, trivial⟩
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -⟩ := kc_core hF hfs (sg := sg0n)
    (fun g h => by simp [sg0n] at h) (by simp [sg0n]) (by simp [sg0n, jrOut_iff]) (ks := [])
    (by simp) (by simp) (by simp) hrun hch hE hJ (r := .returned (.val (.word 0))) (st := st)
    (callee := u0.locals) hR rfl (by simp [Good]) (not_abortive_ret _)
    (argsOK_any (by simp [sg0n]) (by simp [sg0n])) ⟨o, hevo⟩
    (fun a _ hw => hw.elim) (Or.inl ⟨by simp, by simp⟩) (Or.inl ⟨by simp, by simp⟩)
  have hm : ({ u0 with memory := upd u0.memory (e + BitVec.ofNat 64 0) v } : State σ).memory = st.memory := rfl
  have hg : ({ u0 with memory := upd u0.memory (e + BitVec.ofNat 64 0) v } : State σ).globals = st.globals := rfl
  refine ⟨⟨jrNZ_congr hg hJ2, Γ2, p2, runT_same hF.hooks hrun2 hm hg rfl rfl,
    chainL_congr hm hg hch2, chainE_congr hm hg hE2⟩, ?_, ?_⟩
  · rw [phi_congrMG hm hg]; omega
  · rcases hact with h | h
    · left; rw [act_congr hm hg, hact2]; exact h
    · right; rw [phi_congrMG hm hg]; omega


/-- On a `GK` chain the global `ev` points at the head frame's EV record. -/
theorem gk_gword {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u) : gword u nmEv = some e := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  rw [← hob]; exact hevo.2.2

/-- **`st ev + 0, y.0`** (`y` a local word struct) as a Hoare step on `GK`. -/
theorem hoare_pcStore {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u)
    {y : MlS} {ws : List (BitVec 64)} (hlk : u.locals.lookup y = some (wv ws))
    (hws : 0 < ws.length) :
    HoareG σ guestCtx (fun t => t = u) (stG "ev" 0 (.rfield 0 (lv y)))
      (fun ro t => ro = none ∧ GK H gw Γ0 s0 p0 fs d t) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have hx : ev s (lv y) = some (wv ws) := by rw [ev_lv]; exact hlk
  rw [ev_rfield_wv hx hws] at hv
  cases hv
  refine ⟨ws[0], rfl, fun _ => ⟨rfl, ?_⟩⟩
  have he := gk_gword hfs hu
  rw [he, Option.some.injEq] at hG
  subst hG
  exact gk_pcstore hF hfs hu ws[0]

end InitECandidate.Solver.MemSafe.Frames
