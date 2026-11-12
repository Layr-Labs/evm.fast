import InitECandidate.Solver.MemSafe.D0.Store
import InitECandidate.Solver.MemSafe.Ops2.Top

/-!
# Direct stores in the `KP` form

* `hoareG_stL`: `st x + k, e` for a word local `x`.
* `kp_store_inert`: a memory change to inert cells keeps `KP`.
* `kp_store_ev` (EV slots `6, 7, 10, 25`), `kp_store_msg` (message cells `48 / 104 / 112 / 120 /
  168`, given `RecNoMsg`), `kp_store_spill0` (`ev[192] = 0` lowers `Φ`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {X : Ctx 64}

/-- `st x + k, e` for a word local `x`: the memory gets one word. -/
theorem hoareG_stL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {k : Nat} {e : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ M v, s.locals.lookup n = some (.val (.word M)) →
      ev s e = some v → ∃ x, v = .val (.word x) ∧ (s.memaddrs (M + BitVec.ofNat 64 k) →
        Q none { s with memory := upd s.memory (M + BitVec.ofNat 64 k) x })) :
    HoareG σ X P (.store (.op .add [lv n, cw k]) e) Q := by
  refine hoareG_store fun s hs hp w v mem hw hv hmem => ?_
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz; cases hz
  obtain ⟨x, rfl, hq⟩ := h s hs hp y v hy hv
  simp only [flattenHOL] at hmem
  obtain ⟨hd, rfl⟩ := stores_one hmem
  exact hq hd

section kp
variable {H : Hooks σ}

/-- **A write to inert cells keeps `KP`.** -/
theorem kp_store_inert (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u t : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u)
    {Z : BitVec 64 → Prop}
    (hZ : ∀ Γ1, G guestC H Γ1 u → ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
      SafeCells guestC H Γ1 u Z ∧ InertZ Γ1 Z ∧ ∀ a, Z a → ¬ KCell guestC Γ1 a)
    (hmod : ModifiesOnly Z u.memory t.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP H gw Γ0 s0 p0 fs e mg t := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨hs, hi, hB⟩ := hZ Γ1 hG1 hch hE
  obtain ⟨p, hrun2, hch2, hE2, hw, kE⟩ :=
    inert_write (gw := gw) hF hG1 hch hE hfs hmod hs hi hg hd hbe
  refine ⟨jrNZ_congr hg hJ, Γ1, p1, ?_, hch2, hE2, ?_, ?_⟩
  · obtain ⟨q, hq, hord, hL, _⟩ := hG1
    obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hrun.2.1)
    obtain rfl : p = q := Option.some.inj (hrun2.1.symm.trans hrun.2.1)
    exact runT_trans hrun (runT_of_run hrun2 (bkeep_of_cells hmod hB))
  · rw [phi_eq hch2.chain, hw, ← phi_eq hch.chain]; exact hΦ
  · have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
    rw [kE (e, c) hmem 112 (by omega) (by unfold FreeOff; omega)]; exact h112

end kp

section kpg
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

/-- **`st ev + 8 j, x` for a free slot `j ∈ {6, 7, 10, 25}` keeps `KP`.** -/
theorem kp_store_ev {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u t : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u) {j : Nat}
    (hj : j = 6 ∨ j = 7 ∨ j = 10 ∨ j = 25) {x : BitVec 64}
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 (8 * j)) x) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP HJ gw Γ0 s0 p0 fs e mg t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hmo : ModifiesOnly (fun a => e + BitVec.ofNat 64 (8 * j) = a) u.memory t.memory := by
    rw [hm]
    exact modifiesOnly_upd (modifiesOnly_refl _ _)
      (show e + BitVec.ofNat 64 (8 * j) = e + BitVec.ofNat 64 (8 * j) from rfl) x
  refine kp_store_inert hF hfs hu (Z := fun a => e + BitVec.ofNat 64 (8 * j) = a) ?_ hmo hg hd hbe
  intro Γ1 hG hch _
  obtain ⟨p, hps, hord, hL, _⟩ := hG
  have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch hmem
  dsimp only at hoeb
  have hse := ev_size hF hL hoe hoet
  have hGO := Hooks.gamOK_of_layout hL
  have hFree : FreeOff (8 * j) := by unfold FreeOff; omega
  have hks : j ∉ Struct.smSlots := by
    simp only [Struct.smSlots, List.mem_cons, List.mem_nil_iff, or_false]; omega
  have hcell : e + BitVec.ofNat 64 (8 * j) = oe.cell j := by rw [← hoeb]; rfl
  refine ⟨?_, ?_, ?_⟩
  · rintro a rfl
    refine ⟨oe, hoe, j, by unfold Obj.HasSlot; omega, by omega, ?_, hcell, fun o' ho' hf => ?_⟩
    · rw [hoet]; rcases hj with rfl | rfl | rfl | rfl <;> exact Or.inl rfl
    · rw [hcell] at hf
      exact fp_ev_free hGO hoe hoet hks (by omega) hf
  swap
  · rintro a rfl hbc
    obtain ⟨o', ho', hty', k', hk', -, he⟩ := kCell_keep hbc
    obtain ⟨rfl, -⟩ := cell_inj hord hL ho' hoe hk' (by unfold Obj.HasSlot; omega) (he.symm.trans hcell)
    exact hF.evK (by rw [← hoet]; exact hty')
  · intro o ho k hk h hz
    have hjsz : 8 * j < oe.size := by omega
    have hz' : o.base + BitVec.ofNat 64 k = oe.base + BitVec.ofNat 64 (8 * j) := by
      rw [← hz, hoeb]
    rcases h with ⟨hot, hnf⟩ | hot | ⟨hot, -⟩ | hot
    · by_cases hb : o.base = e
      · exact cell_ne hord hL ho hoe hk hjsz (Or.inr (fun hh => hnf (hh ▸ hFree))) hz'
      · exact cell_ne hord hL ho hoe hk hjsz (Or.inl (by rw [hoeb]; exact hb)) hz'
    · exact cell_ne hord hL ho hoe hk hjsz
        (Or.inl (base_ne_of_ty hL ho hoe (by rw [hot, hoet]; exact hF.ne.symm))) hz'
    · exact cell_ne hord hL ho hoe hk hjsz (Or.inl (base_ne_of_ty hL ho hoe (by
          rcases hot with h' | h' <;> rw [h', hoet] <;> decide))) hz'
    · exact cell_ne hord hL ho hoe hk hjsz (Or.inl (base_ne_of_ty hL ho hoe (by
          rcases hot with h' | h' | h' | h' | h' <;> rw [h', hoet] <;> decide))) hz'

/-- **`st msg + 8 k, x` for `k ∈ {6, 13, 14, 15, 21}` keeps `KP`** (given `RecNoMsg`). -/
theorem kp_store_msg (hRec : RecNoMsg σ) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u t : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u) {k : Nat}
    (hk : k = 6 ∨ k = 13 ∨ k = 14 ∨ k = 15 ∨ k = 21) {x : BitVec 64}
    (hm : t.memory = upd u.memory (mg + BitVec.ofNat 64 (8 * k)) x) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP HJ gw Γ0 s0 p0 fs e mg t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have h112 : fld u.memory e 112 = mg := hu.2.choose_spec.choose_spec.2.2.2.2
  have hmo : ModifiesOnly (fun a => mg + BitVec.ofNat 64 (8 * k) = a) u.memory t.memory := by
    rw [hm]
    exact modifiesOnly_upd (modifiesOnly_refl _ _)
      (show mg + BitVec.ofNat 64 (8 * k) = mg + BitVec.ofNat 64 (8 * k) from rfl) x
  refine kp_store_inert hF hfs hu (Z := fun a => mg + BitVec.ofNat 64 (8 * k) = a) ?_ hmo hg hd hbe
  intro Γ1 hG hch hE
  obtain ⟨p, hps, hord, hL, _⟩ := hG
  have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch hmem
  obtain ⟨⟨M, hMΓ, hMb, hMt, hMs⟩, -⟩ := hE.1 p hps (e, c) hmem
  have hMb' : M.base = mg := hMb.trans h112
  have hGO := Hooks.gamOK_of_layout hL
  have hFree : k < 22 := by omega
  have hsl : M.HasSlot k := by unfold Obj.HasSlot; omega
  have hcell : mg + BitVec.ofNat 64 (8 * k) = M.cell k := by rw [← hMb']; rfl
  have hk8 : 8 * k < M.size := by omega
  refine ⟨?_, ?_, ?_⟩
  · rintro a rfl
    refine ⟨M, hMΓ, k, hsl, by omega, ?_, hcell, fun o' ho' hf => ?_⟩
    · rcases hMt with h | h <;> rw [h] <;> rcases hk with rfl | rfl | rfl | rfl | rfl <;> decide
    · rw [hcell] at hf
      exact fp_msg_free hRec hord hL hMΓ hMt hsl hf
  swap
  · rintro a rfl (⟨o', ho', hty', k', hk', -, he⟩ | ⟨o', ho', hty', k', hk24, hk', -, he⟩)
    · obtain ⟨rfl, -⟩ := cell_inj hord hL ho' hMΓ hk' hsl (he.symm.trans hcell)
      unfold bkTys blockTys recKTys at hty'
      rcases hMt with h' | h' <;> rw [h'] at hty' <;> simp at hty'
    · obtain ⟨rfl, hkk⟩ := cell_inj hord hL ho' hMΓ hk' hsl (he.symm.trans hcell)
      rcases hk24 with h | h <;> rcases hk with h' | h' | h' | h' | h' <;> omega
  · intro o ho k' hk' h hz
    have hz' : o.base + BitVec.ofNat 64 k' = M.base + BitVec.ofNat 64 (8 * k) := by
      rw [← hz, hMb']
    rcases h with ⟨hot, -⟩ | hot | ⟨hot, h1632⟩ | hot
    · exact cell_ne hord hL ho hMΓ hk' hk8
        (Or.inl (base_ne_of_ty hL ho hMΓ (by rcases hMt with h' | h' <;> rw [hot, h'] <;> decide)))
        hz'
    · exact cell_ne hord hL ho hMΓ hk' hk8
        (Or.inl (base_ne_of_ty hL ho hMΓ (by rcases hMt with h' | h' <;> rw [hot, h'] <;> decide)))
        hz'
    · by_cases hb : o.base = M.base
      · exact cell_ne hord hL ho hMΓ hk' hk8 (Or.inr (by omega)) hz'
      · exact cell_ne hord hL ho hMΓ hk' hk8 (Or.inl hb) hz'
    · exact cell_ne hord hL ho hMΓ hk' hk8
        (Or.inl (base_ne_of_ty hL ho hMΓ (by
          rcases hot with h' | h' | h' | h' | h' <;> rcases hMt with h'' | h'' <;> rw [h', h''] <;> decide))) hz'

/-- **`st ev + 192, 0` (`EV_STATE_GAS_SPILLED := 0`) keeps `KP`**: the weight drops. -/
theorem kp_store_spill0 {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u t : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u)
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 192) 0) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP HJ gw Γ0 s0 p0 fs e mg t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hmod : ModifiesOnly (TopCells e c) u.memory t.memory := by
    rw [hm]
    exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨24, by simp [evDriverSlots], rfl⟩) _
  obtain ⟨hrun2, hch2, hE2, hrest, k16, k232⟩ := kg_top hF hfs hrun hch hE hmod hg hd hbe
  obtain ⟨kE, kC⟩ := top_fields hF hfs hG1 hch (k := 192) (by omega) hm
  have k192 : fld t.memory e 192 = 0 := by
    rw [hm]; unfold fld; rw [rd_upd, if_pos rfl]
  refine ⟨jrNZ_congr hg hJ, Γ1, p1, hrun2, hch2, hE2, ?_, ?_⟩
  · have h1 := phi_eq hch2.chain
    have h2 := phi_eq hch.chain
    rw [hfs, wsum_cons, hrest, wt_eq, kE 64 (by omega) (by omega), kE 104 (by omega) (by omega), kC,
      k192] at h1
    rw [hfs, wsum_cons, wt_eq] at h2
    generalize (if fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0 then 1 else 0 : Nat) = b at h1 h2
    have z : (0 : BitVec 64).toNat = 0 := rfl
    have : Phi t ≤ Phi u := by
      rw [h1, h2]
      omega
    omega
  · rw [kE 112 (by omega) (by omega)]; exact h112

/-- The running frame's `ev` global of a `KP` state. -/
theorem kp_ev_head {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u) : gword u nmEv = some e := by
  obtain ⟨-, Γ1, p1, -, hch, -⟩ := hu
  exact ev_head (hfs ▸ hch)

/-- **`st msg + off, e1; …`** for `off ∈ {48, 104, 112, 120, 168}`. -/
theorem hoareG_kpStMsg (hRec : RecNoMsg σ) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {n : MlS}
    (hl : u0.locals.lookup n = some (.val (.word mg))) {off : Nat} {e1 : ExpHOL 64}
    (hoff : off = 48 ∨ off = 104 ∨ off = 112 ∨ off = 120 ∨ off = 168)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (fun t => t = u0) (.store (.op .add [lv n, cw off]) e1)
      (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stL fun s _ hs M v hM hv => ?_
  subst hs
  rw [hl] at hM
  cases hM
  obtain ⟨x, rfl⟩ := hx v hv
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, ?_, rfl⟩⟩
  rcases hoff with rfl | rfl | rfl | rfl | rfl
  · exact kp_store_msg hRec hfs hu (k := 6) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 13) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 14) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 15) (by omega) rfl rfl rfl rfl
  · exact kp_store_msg hRec hfs hu (k := 21) (by omega) rfl rfl rfl rfl

/-- **`st ev + off, e1; …`** for `off ∈ {48, 56, 80, 200}` (EV slots `6, 7, 10, 25`). -/
theorem hoareG_kpStEv {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {off : Nat} {e1 : ExpHOL 64} (hoff : off = 48 ∨ off = 56 ∨ off = 80 ∨ off = 200)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x)) :
    HoareG σ X (fun t => t = u0) (stG "ev" off e1) (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have he := kp_ev_head hfs hu
  rw [he, Option.some.injEq] at hG
  subst hG
  obtain ⟨x, rfl⟩ := hx v hv
  refine ⟨x, rfl, fun _ => Or.inl ⟨rfl, ?_, rfl⟩⟩
  rcases hoff with rfl | rfl | rfl | rfl
  · exact kp_store_ev hfs hu (j := 6) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 7) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 10) (by omega) rfl rfl rfl rfl
  · exact kp_store_ev hfs hu (j := 25) (by omega) rfl rfl rfl rfl

/-- **`st ev + 192, 0; …`** (`EV_STATE_GAS_SPILLED := 0`). -/
theorem hoareG_kpStSpill0 {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    {e1 : ExpHOL 64} (hx : ev u0 e1 = some (.val (.word 0))) :
    HoareG σ X (fun t => t = u0) (stG "ev" 192 e1) (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst hs
  have he := kp_ev_head hfs hu
  rw [he, Option.some.injEq] at hG
  subst hG
  rw [hx, Option.some.injEq] at hv
  subst hv
  exact ⟨0, rfl, fun _ => Or.inl ⟨rfl, kp_store_spill0 hfs hu rfl rfl rfl rfl, rfl⟩⟩

end kpg


end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.kp_store_inert
#print axioms InitECandidate.Solver.MemSafe.D0.kp_store_ev
#print axioms InitECandidate.Solver.MemSafe.D0.kp_store_msg
#print axioms InitECandidate.Solver.MemSafe.D0.kp_store_spill0
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_stL
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStMsg
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStEv
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kpStSpill0
