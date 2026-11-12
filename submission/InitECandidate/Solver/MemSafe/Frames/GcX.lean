import InitECandidate.Solver.MemSafe.Frames.GcCode
import InitECandidate.Solver.MemSafe.Frames.SCGuestX

/-!
# The guest chain extension along `generic_call`'s steps (frames8)

* `chainE_move`: a step of the typed heap (`Mono`, `Ext`, `NewFresh`) that keeps every frame's
  extension cells (`XKeep`) and CK chain slots keeps `ChainE GP GR`.
* `xKeep_trans`, `xKeep_updEV` / `ck_updEV` (a store into a slot of a `Γ` EV record other than
  88 / 112 / 136 keeps the extension cells of every frame and every CK slot), **`chainE_updEV`**.
* `chainE_protKeep`: a step keeping every `prot` cell of `Γ` keeps `ChainE GP GR`.
* `preSCX_of`: `PreSCT` plus the extension fact of its decomposition gives `PreSCX`.
-/

set_option autoImplicit false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- **A step keeping the extension cells keeps the guest extension.** -/
theorem chainE_move {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p)
    (hpt : ptrsOf t = some p') (hord : p.Ordered) (hord' : p'.Ordered) (hL : Layout guestC p Γ)
    (hL' : Layout guestC p' Γ') (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p')
    {fs : List Frame} (hx : ∀ f ∈ fs, XKeep guestC Γ s.memory t.memory f)
    (hck : ∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ' t fs := by
  refine ⟨fun q hq f hf => ?_, fun ch pa ha => ?_⟩
  · obtain rfl := ptrs_some hpt hq
    exact xCfg_guest.step hord hord' hL hL' hmo hext hnf (hx f hf) (h.1 p hp f hf)
  · obtain ⟨hch, hpa⟩ := adj_mem ha
    exact xCfg_guest.stepR hord hord' hL hL' hmo hext hnf (hx ch hch)
      (hx pa (List.mem_of_mem_tail hpa)) (hck ch hch) (h.2 ch pa ha)

theorem xKeep_trans {Γ : Gam} {m1 m2 m3 : Mem} {f : Frame} (h1 : XKeep guestC Γ m1 m2 f)
    (h2 : XKeep guestC Γ m2 m3 f) : XKeep guestC Γ m1 m3 f :=
  ⟨fun j hj => (h2.1 j hj).trans (h1.1 j hj),
    fun o ho hot k hk hp => (h2.2 o ho hot k hk hp).trans (h1.2 o ho hot k hk hp)⟩

/-- A store into byte `k` (not 88 / 112 / 136) of a `Γ` EV record keeps the extension cells of
every frame whose EV record is in `Γ`. -/
theorem xKeep_updEV {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    {k : Nat} (hk : k < 280) (hkx : k ≠ 88 ∧ k ≠ 112 ∧ k ≠ 136 ∧ k ≠ 208 ∧ k ≠ 224) (m : Mem) (x : BitVec 64)
    {f : Frame} (hf : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) :
    XKeep guestC Γ m (upd m (oe.base + BitVec.ofNat 64 k) x) f := by
  have hsz := ev_size hF hL hoe hoet
  obtain ⟨of, hof, hofb, hoft⟩ := hf
  have hszf := ev_size hF hL hof hoft
  refine ⟨fun j hj => ?_, fun o ho hot i hi hp => ?_⟩
  · have hj' : 8 * j = 88 ∨ 8 * j = 112 ∨ 8 * j = 136 ∨ 8 * j = 208 ∨ 8 * j = 224 := by
      simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
      rcases hj with rfl | rfl | rfl | rfl | rfl <;> simp
    rw [← hofb]
    refine fld_upd_ne' (cell_ne hord hL hof hoe (by omega) (by omega) ?_)
    by_cases hb : of.base = oe.base
    · right; omega
    · left; exact hb
  · have hne : o.base ≠ oe.base := base_ne_of_ty hL ho hoe (by
      rw [hoet]; intro h; rw [h] at hot; revert hot; decide)
    have hi' : 8 * i < o.size := by unfold Obj.HasSlot at hi; omega
    have hc : o.cell i ≠ oe.base + BitVec.ofNat 64 k :=
      cell_ne hord hL ho hoe (k := 8 * i) hi' (by omega) (Or.inl hne)
    rw [rd_upd, if_neg hc]

/-- A store into a `Γ` EV record keeps the CK cells of every `Γ` CK record. -/
theorem ck_updEV {p : Ptrs} {Γ : Gam} {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK)
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    {k : Nat} (hk : k < 280) (m : Mem) (x : BitVec 64) {c : BitVec 64}
    (hc : ∃ o ∈ Γ, o.base = c ∧ o.ty = tCK) {j : Nat} (hj : j ∈ ckXSlots) :
    fld (upd m (oe.base + BitVec.ofNat 64 k) x) c j = fld m c j := by
  have hsz := ev_size hF hL hoe hoet
  obtain ⟨oc, hoc, hocb, hoct⟩ := hc
  have hszc := ck_size hF hL hoc hoct
  have hj' : j ≤ 80 := by
    simp only [ckXSlots, ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark,
      ckOutStart, ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hj
    omega
  rw [← hocb]
  exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega)
    (Or.inl (base_ne_of_ty hL hoc hoe (by rw [hoct, hoet]; decide))))

/-- **A store into a non-extension slot of a `Γ` EV record keeps `ChainE GP GR`.** -/
theorem chainE_updEV {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {s t : State σ}
    {p : Ptrs} (hp : ptrsOf s = some p) (hpt : ptrsOf t = some p) (hord : p.Ordered)
    (hL : Layout guestC p Γ) {fs : List Frame} (hch : ChainL guestC tEV tCK Γ s fs) {oe : Obj}
    (hoe : oe ∈ Γ) (hoet : oe.ty = tEV) {k : Nat} (hk : k < 280)
    (hkx : k ≠ 88 ∧ k ≠ 112 ∧ k ≠ 136 ∧ k ≠ 208 ∧ k ≠ 224) {x : BitVec 64}
    (hm : t.memory = upd s.memory (oe.base + BitVec.ofNat 64 k) x)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ t fs := by
  refine chainE_move hp hpt hord hord hL hL (mono_refl p) (ext_refl Γ) (newFresh_refl Γ p)
    (fun f hf => ?_) (fun f hf j hj => ?_) h
  · rw [hm]; exact xKeep_updEV hF hord hL hoe hoet hk hkx _ x (ev_obj hch hf)
  · rw [hm]; exact ck_updEV hF hord hL hoe hoet hk _ x (ck_obj hch hf) hj

/-- **A step keeping every `prot` cell of `Γ` keeps `ChainE GP GR`.** -/
theorem chainE_protKeep {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {Γ Γ' : Gam}
    {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hpt : ptrsOf t = some p')
    (hord : p.Ordered) (hord' : p'.Ordered) (hL : Layout guestC p Γ) (hL' : Layout guestC p' Γ')
    (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {fs : List Frame}
    (hch : ChainL guestC tEV tCK Γ s fs) (hk : ProtKeep guestC Γ s t)
    (h : ChainE GP GR Γ s fs) : ChainE GP GR Γ' t fs := by
  have hfk := framesKept_of_protKeepS hF guestSt_frames hL hch (protKeep_nst_of hk)
  exact chainE_move hp hpt hord hord' hL hL' hmo hext hnf
    (fun f hf => xKeep_of_protKeepS hF hL (protKeep_nst_of hk) (ev_obj hch hf))
    (fun f hf => ckX_of13 (hfk f hf).2) h

/-- `credit_state_gas_refund`'s three stores (bytes 64 / 192 / 72 of the running record) keep
the extension cells. -/
theorem xKeep_credit {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (m : Mem) (a : BitVec 64) {f : Frame} (hf : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) :
    XKeep guestC Γ m (creditMem m oe.base a) f := by
  unfold creditMem
  exact xKeep_trans (xKeep_trans (xKeep_updEV hF hord hL hoe hoet (k := 64) (by omega)
    (by omega) _ _ hf) (xKeep_updEV hF hord hL hoe hoet (k := 192) (by omega) (by omega) _ _ hf))
    (xKeep_updEV hF hord hL hoe hoet (k := 72) (by omega) (by omega) _ _ hf)

theorem ck_credit {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout guestC p Γ) {oe : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (m : Mem) (a : BitVec 64) {c : BitVec 64} (hc : ∃ o ∈ Γ, o.base = c ∧ o.ty = tCK) {j : Nat}
    (hj : j ∈ ckXSlots) : fld (creditMem m oe.base a) c j = fld m c j := by
  unfold creditMem
  rw [ck_updEV hF hord hL hoe hoet (k := 72) (by omega) _ _ hc hj,
    ck_updEV hF hord hL hoe hoet (k := 192) (by omega) _ _ hc hj,
    ck_updEV hF hord hL hoe hoet (k := 64) (by omega) _ _ hc hj]

/-- `PreSCT` and the extension fact for its decomposition give `PreSCX`. -/
theorem preSCX_of {C : Cfg} {St : Nat → Bool} {tEV tCK M : Nat}
    {NewPre : List (ValueHOL 64) → State σ → Gam → Prop}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam} (h : PreSCT C St tEV tCK M NewPre vs s Γ)
    (hx : ∀ cm kind cmark cmm nac os osz ca fs, vs = scArgs cm kind cmark cmm nac os osz ca →
      ChainL C tEV tCK Γ s fs → XP Γ s fs cm cmark cmm) :
    PreSCX C St tEV tCK M NewPre XP vs s Γ := by
  obtain ⟨cm, kind, cmark, cmm, nac, os, osz, ca, hvs, hk, fs, e0, c0, rest, h1, h2, h3, h4, h5, h6,
    h7, h8, h9, h10, h11, h12, h13⟩ := h
  exact ⟨cm, kind, cmark, cmm, nac, os, osz, ca, hvs, hk, fs, e0, c0, rest, h1, h2, h3, h4, h5, h6,
    h7, h8, h9, h10, h11, h12, h13, hx cm kind cmark cmm nac os osz ca fs hvs h1⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.chainE_updEV
#print axioms InitECandidate.Solver.MemSafe.Frames.chainE_protKeep
