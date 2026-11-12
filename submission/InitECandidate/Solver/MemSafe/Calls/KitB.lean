import InitECandidate.Solver.MemSafe.Calls.Kit5
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL handlers' Hoare kit, part B (frames15): steps that carry blocks `Bs`

`op_callcode` loads its target `to = lds(msg+32)` early and uses it at `get_account` and
`generic_call`. `to` is carried as a `KCall` block (`BufOK 20` from `GP` at the load); the steps
that `Kit*` states for `KCall []` are restated here for any `Bs`:

* `kc_coreMB` (`kc_coreM` + the `BufOK` transport), `kcall_em`, **`hq_emB`**;
* `kcall_topOther`, **`hq_stB`**, **`hq_st64B`**;
* **`hq_gcB`**, **`hq_dlgB`**, **`hq_ecoB`**, `oc_satwB`.
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

section core
variable {H : Hooks σ}

theorem kc_coreMB (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hnot : ∀ j ∈ [3, 13], j ∉ ks)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ1 : Gam} {p1 : Ptrs} {u : State σ} (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1)
    (hch : ChainL guestC tEV tCK Γ1 u fs) (hE : ChainE GP GR Γ1 u fs) (hJ : JrNZ u)
    {vs : List (ValueHOL 64)} {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) (hargs : ArgsOK guestC Γ1 p1 sg.params vs)
    (hpre : Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ a, ProtCell guestC Γ1 a → PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (htm : ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 → ∀ p', ptrsOf st = some p' →
      (fld st.memory e evMem).toNat + (fld st.memory e evMemCap).toNat = p'.fp)
    (hrd : (18 ∉ ks ∧ 27 ∉ ks) ∨ ∀ Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      Frames.RetOK guestC Γ2 st.memory e) :
    ∃ Γ2 p2, RunT guestC H gw Γ0 s0 Γ2 st p0 p2 ∧ ChainL guestC tEV tCK Γ2 st fs ∧
      ChainE GP GR Γ2 st fs ∧
      Phi st + ((fld u.memory e 64).toNat + (fld u.memory e 192).toNat) =
        Phi u + ((fld st.memory e 64).toNat + (fld st.memory e 192).toNat) ∧
      JrNZ st ∧ act st = act u ∧
      Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 ∧
      (∀ j ∈ evProtSlots, j ∉ ks → fld st.memory e (8 * j) = fld u.memory e (8 * j)) ∧
      (∀ j, j < 13 → fld st.memory c (8 * j) = fld u.memory c (8 * j)) ∧
      (∀ b n, BufOK guestC Γ1 p1 b n → BufOK guestC Γ2 p2 b n) := by
  have hH := hF.hooks
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hG1
      exact not_kCell_of_pwtopM hord hL (hpw a hp hw))
  have hGe : G guestC H Γ1 (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hG1
  have hche : ChainL guestC tEV tCK Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hch
  have hEe : ChainE GP GR Γ1 (callEntryStateHOLFinite u callee) fs :=
    chainE_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hE
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 := (ptrsOf_congr rfl).trans hp1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = p1 := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ1 a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw a hp hw).1⟩
  have hBuf : ∀ b n, BufOK guestC Γ1 q b n → BufOK guestC Γ2 p2 b n :=
    fun b n hb => bufOK_sumCore hGe hc hb
  subst hfs
  obtain ⟨hch2, hΦ2, hkC, hkE⟩ := pa_coreM hF hGe hche hks8 hnot hgwE hcT hac (htm Γ2 hQ)
    (hrd.imp id fun h => h Γ2 hQ)
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, hc1⟩, -⟩ := hfs'
  rw [← he1] at he'
  rw [← hc1] at hc'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw a hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
  have hact : act st = act u := by
    rw [act_eq he2 hc2, act_eq (s := u) he' hc', hkC 4 (by decide),
      hkE 13 (by simp [evProtSlots]) (hnot 13 (by simp))]
    rfl
  refine ⟨Γ2, p2, hrun2, hch2, hE2, ?_, jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ),
    hact, hQ, fun j hj hk => hkE j hj hk, fun j hj => hkC j hj, hBuf⟩
  rw [phi_locFree.entry] at hΦ2; exact hΦ2

end core

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **`extend_memory(x)` on `KCall Bs`** (`gk_em` with the blocks transported). -/
theorem kcall_em (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ}
    (hu : KC Bs d u0) {x : BitVec 64} (hx32 : x.toNat % 32 = 0)
    (hxb : (fld u0.memory e 32).toNat + x.toNat ≤ 2 ^ 40) {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : EmRel [.val (.word x)] (callEntryStateHOLFinite u0 callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    (∃ v, r = .returned v) ∧ KC Bs d st ∧
      (fld st.memory e 32).toNat = (fld u0.memory e 32).toNat + x.toNat ∧
      (∀ j ∈ evProtSlots, j ∉ [4, 5] → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨hS, hX⟩, hD⟩ := hR
  have hret : ∃ v, r = .returned v := (hX hg).resolve_right hna
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, hact0⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  subst hob
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC Hooks.guestHooksR Γ1 (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hcont : ∀ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p →
      (fld u0.memory o.base 24).toNat + (fld u0.memory o.base 40).toNat = p.fp :=
    fun p hp => hch.topMem o.base c rest hfs p ((ptrsOf_congr rfl).symm.trans hp)
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, hQ, hkE, -, hBuf⟩ := kc_coreMB hF hfs
    (sg := Struct.sgEM) (ks := [4, 5])
    (Pre := fun vs s Γ => Struct.EMPre Shards.sty vs s Γ ∧ ReqOK [Shards.capEv [4, 5]] s Γ)
    (PW := Struct.PWev Shards.sty [4, 5]) (Q := Struct.EMQ Shards.sty) (vs := [.val (.word x)])
    (fun g h => by simp [Struct.sgEM] at h)
    (by simp [Struct.sgEM]) (by simp [Struct.sgEM, jrOut_iff]) (by decide) (by decide) (by decide)
    hrun hch hE hJ (fun hg' _ => hS hg') hg hna
    (argsOK_any (by simp [Struct.sgEM]) rfl)
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
    (fun a _ hw => by
      have := capPW_cs (vs := [.val (.word x)]) hF hGe (capEv_ok [4, 5]) (by decide)
        (Shards.pwev_cap hw)
      rwa [evKs_capEv] at this)
    (fun Γ2 hq p' hp' => by
      obtain ⟨-, h2⟩ := hq o x (evObj_entry hevo) rfl
      exact (h2 hret).2 p' hp')
    (Or.inl (by decide))
  obtain ⟨hmem, h2⟩ := hQ o x (evObj_entry hevo) rfl
  obtain ⟨hlen, -⟩ := h2 hret
  have k8 := hkE 8 (by simp [evProtSlots]) (by decide)
  have k24 := hkE 24 (by simp [evProtSlots]) (by decide)
  simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at k8 k24
  rw [k8, k24] at hΦ2
  refine ⟨hret, ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b hb => hBuf _ _ (hB b hb)⟩, by omega, ?_⟩,
    hlen, fun j hj hk => hkE j hj hk⟩
  rw [hact2]; rcases hact0 with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

/-- **`extend_memory(x); k`** on `KCall Bs`, also keeping `EV 112`. -/
theorem hq_emB (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat}
    {Bs : List (BitVec 64)} {X : BitVec 64} {u0 : State σ} (hu : KC Bs d u0)
    (hx : ev u0 x = some (.val (.word X)))
    (h32 : X.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X.toNat ≤ 2 ^ 40)
    (hk : ∀ st : State σ, KC Bs d st →
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
      obtain ⟨⟨v, hv⟩, -⟩ := kcall_em hfs hu h32 hb hR (good_of_abn habn) hna
      exact absurd hv (Struct.abn_ne_ret habn v)
  · intro vs hvs callee v st hR
    rw [hvs0] at hvs
    cases hvs
    obtain ⟨-, hk1, hlen, hkeep⟩ := kcall_em hfs hu h32 hb hR (by simp [Good])
      (not_abortive_ret v)
    exact hk st hk1 hlen hkeep (em_keep112 hfs hu h32 hb hR)

/-- **A driver-cell store keeps `KCall Bs d`** (`gk_topOther` with the blocks). -/
theorem kcall_topOther (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d : Nat}
    {u0 : State σ} (hu : KC Bs d u0) {j : Nat} (hj : j ∈ evDriverSlots)
    (hj8 : j ≠ 8) (hj24 : j ≠ 24) (hj13 : j ≠ 13) {x : BitVec 64} {t : State σ}
    (hm : t.memory = upd u0.memory (e + BitVec.ofNat 64 (8 * j)) x) (hg : t.globals = u0.globals)
    (hd : t.memaddrs = u0.memaddrs) (hbe : t.be = u0.be) : KC Bs d t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, hact0⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hmod : ModifiesOnly (TopCells e c) u0.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨j, hj, rfl⟩) x
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := kg_top hF hfs hrun hch hE hmod hg hd hbe
  have hjl : j ≤ 29 := by simp [evDriverSlots] at hj; omega
  have hΦ := phi_store_other hF hfs hG1 hch hch2 (k := 8 * j) (by omega) (by omega) (by omega)
    (by omega) hm hrest
  obtain ⟨kE, kC⟩ := top_fields hF hfs hG1 hch (k := 8 * j) (by omega) hm
  refine ⟨jrNZ_congr hg hJ, ⟨Γ1, p1, hrun2, hch2, hE2, hB⟩, by omega, ?_⟩
  have hact : act t = act u0 := by
    obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
    obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
    rw [hfs] at hfs1 hfs2
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs1 hfs2
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs1
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
    rw [act_eq he2 hc2, act_eq he1 hc1, kC, kE 104 (by omega) (by omega)]
  rcases hact0 with h | h
  · exact Or.inl (by rw [hact]; exact h)
  · exact Or.inr (by omega)

/-- **`st ev + k, e1; kont`** into a driver slot `j ∉ {8, 24, 13}` on `KCall Bs`. -/
theorem hq_stB (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {j k : Nat} (hk : k = 8 * j) (hj : j ∈ evDriverSlots)
    (hj8 : j ≠ 8) (hj24 : j ≠ 24) (hj13 : j ≠ 13) {e1 : ExpHOL 64} {kont : ProgHOL 64}
    {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x))
    (hc : ∀ (x : BitVec 64) (st : State σ), KC Bs d st →
      st.memory = upd u0.memory (e + BitVec.ofNat 64 k) x →
      st.locals = u0.locals → HoareG σ guestCtx (fun t => t = st) kont Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (stG "ev" k e1) kont) Q := by
  have hgk := kcall_gk hu
  refine hoareG_seq (R := fun ro t => ro = none ∧ ∃ x, KC Bs d t ∧
      t.memory = upd u0.memory (e + BitVec.ofNat 64 k) x ∧ t.locals = u0.locals) ?_
    (fun r t _ hr _ h => absurd h.1 hr)
    (fun t ht ⟨_, x, h1, h2, h3⟩ hg => hc x t h1 h2 h3 t ht rfl hg)
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst s
  rw [gk_gword hfs hgk, Option.some.injEq] at hG
  subst hG
  obtain ⟨x, rfl⟩ := hx v hv
  refine ⟨x, rfl, fun _ => ⟨rfl, x, ?_, rfl, rfl⟩⟩
  subst hk
  exact kcall_topOther hfs hu hj hj8 hj24 hj13 rfl rfl rfl rfl

/-- **`st ev + 64, GAS + y; kont`** on `KCall Bs`: `Φ` grows by at most `y`. -/
theorem hq_st64B (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {e1 : ExpHOL 64} {kont : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat}
    {y : BitVec 64} {u0 : State σ} (hu : KC Bs d u0)
    (hx : ∀ v, ev u0 e1 = some v → v = .val (.word (fld u0.memory e 64 + y))) (hd : y.toNat + 1 ≤ d)
    (hc : ∀ st : State σ, KC Bs (d - y.toNat) st → st.locals = u0.locals →
      HoareG σ guestCtx (fun t => t = st) kont Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (stG "ev" 64 e1) kont) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hgk := kcall_gk hu
  refine hoareG_seq (R := fun ro t => ro = none ∧ KC Bs (d - y.toNat) t ∧ t.locals = u0.locals) ?_
    (fun r t _ hr _ h => absurd h.1 hr) (fun t ht ⟨_, h1, h2⟩ hg => hc t h1 h2 t ht rfl hg)
  refine hoareG_stG fun s _ hs G v hG hv => ?_
  subst s
  rw [gk_gword hfs hgk, Option.some.injEq] at hG
  subst hG
  rw [hx v hv]
  refine ⟨_, rfl, fun _ => ⟨rfl, ?_, rfl⟩⟩
  refine (kcall_top hfs hu (d' := d - y.toNat)
    (t := { u0 with memory := upd u0.memory (e + BitVec.ofNat 64 64) (fld u0.memory e 64 + y) })
    (modifiesOnly_upd (modifiesOnly_refl _ _)
    (show TopCells e c (e + BitVec.ofNat 64 64) from Or.inl ⟨8, by simp [evDriverSlots], rfl⟩) _)
    rfl rfl rfl (by omega) fun Γ1 hG1 hch1 hch2 hrest => ?_).1
  have := phi_store64 hF hfs hG1 hch1 hch2 (x := fld u0.memory e 64 + y) rfl hrest
  have h2 := Calls.add_toNat_le (fld u0.memory e 64) y
  omega

end steps

section gcB
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **`x = generic_call(args)`** from `KCall [] d` with `d ≥ gas + 3`. -/
theorem hq_gcB (hP : PreHyps σ) (hfs : fs = (e, c) :: rest) {x : MlS} {args : List (ExpHOL 64)}
    {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    {gas res tgt ca tr st is isz os osz code cn dp nac : BitVec 64} {value : ValueHOL 64}
    (hargs : ∀ vs, evs u0 args = some vs → ∃ caller : BitVec 64,
      vs = gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac ∧
      ∀ (Γ1 : Gam) (p1 : Ptrs),
        RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
        ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
        (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) →
        BufOK guestC Γ1 p1 caller.toNat 20 ∧ BufOK guestC Γ1 p1 tgt.toNat 20)
    (hsp : (fld u0.memory e evSp).toNat < (fld u0.memory e evStackCap).toNat)
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld u0.memory e evMemLen).toNat)
    (hisz : isz.toNat < 2 ^ 32)
    (hcn : cn.toNat + 63 < 2 ^ 64)
    (hd : gas.toNat + 3 ≤ d) :
    HoareG σ guestCtx (fun t => t = u0) (.call (some (some (.local, x), none)) (nm "generic_call") args)
      (QJ Γ0 s0) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, -⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hspec := gc_sumSpecT_guestRh (σ := σ) hP (M := Phi u0 + gas.toNat + 2)
  -- the summary's facts, for any result
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r (stt : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ))
        (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ [Hooks.gJn]))) (PreGC (Phi u0 + gas.toNat + 2))
        (fun _ _ Γ a => ¬ KCell guestC Γ a) QGC vs (callEntryStateHOLFinite u0 callee) r stt →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' stt ∧ (∃ p', ptrsOf stt = some p') ∧
        JrNZ stt ∧ (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' stt ∧ Phi stt + 1 ≤ Phi s0) ∧
        (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' stt ∧
          Phi stt + 1 ≤ Phi s0) ∧ KeepH guestC Γ0 Γ' s0 stt ∧
        (∀ v, r = .returned v → RootK s0 stt) ∧ (∀ v, r = .exception nmEvmErr v → RootK s0 stt) ∧
        BKeep guestC Γ0 s0 stt ∧ Ext Γ0 Γ' := by
    intro vs hvs callee r stt hR hg hna
    obtain ⟨caller, rfl, hbuf⟩ := hargs vs hvs
    have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite u0 callee) :=
      (G_locFree hF.hooks u0 _ _).mpr hG1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some p1 := (ptrsOf_congr rfl).trans hp1
    obtain ⟨hb1, hb2⟩ := hbuf Γ1 p1 hrun hch hE hB
    have hpre : PreGC (Phi u0 + gas.toNat + 2)
        (gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac)
        (callEntryStateHOLFinite u0 callee) Γ1 :=
      ⟨gas, res, caller, tgt, ca, tr, st, is, isz, os, osz, code, cn, dp, nac, value, rfl, fs, e, c,
        rest, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch, hfs, hsp,
        hout, hisz, by have := phi_locFree.entry (σ := σ) u0 callee; omega, hcn, jrNZ_congr rfl hJ,
        chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE,
        fun p hp => by
          rw [hpe, Option.some.injEq] at hp
          subst hp
          exact ⟨hb1, hb2⟩⟩
    obtain ⟨Γ', q, q', hc, hQ⟩ := hR hg hna Γ1 hGe ⟨p1, hpe,
      argsOK_any (sgA_any 16 _) rfl⟩ hpre
    obtain rfl : q = p1 := Option.some.inj (hc.1.symm.trans hpe)
    have hΦe : Phi (callEntryStateHOLFinite u0 callee) = Phi u0 := phi_locFree.entry u0 callee
    obtain ⟨hq1, hq2⟩ := hQ gas rfl
    have hR0 : RootK s0 (callEntryStateHOLFinite u0 callee) :=
      rootK_congr (s := s0) (t := u0) rfl rfl rfl rfl (rootK_of_same (Fact.out : ChainOf s0 fs) hch.chain)
    have hcc : ChainOf (callEntryStateHOLFinite u0 callee) fs :=
      (chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch).chain
    refine ⟨Γ', hc.2.2.2.2.2.1, ⟨q', hc.2.1⟩,
      jrNZ_sumCore (by decide) (by decide) hc (jrNZ_congr rfl hJ), fun v hv => ?_, fun v hv => ?_,
      keepH_of_runT_sumCore hrun rfl hc,
      fun v hv => rootK_trans hR0 (hq1 v hv).2.2 ⟨fs, hcc⟩,
      fun v hv => rootK_trans hR0 (hq2 v hv).2.2 ⟨fs, hcc⟩,
      ⟨bkeep_of_runT_sumCore hrun rfl hGe (argsOK_any (sgA_any 16 _) rfl) hc (fun _ h => h),
        ext_trans hrun.2.2.2.1 hc.2.2.2.1⟩⟩
    · obtain ⟨h1, h2, -⟩ := hq1 v hv
      exact ⟨h1, by omega⟩
    · obtain ⟨h1, h2, -⟩ := hq2 v hv
      exact ⟨h1, by omega⟩
  refine hoareG_callA hspec ?_ ?_
  · intro s _ hs vs hvs callee v stt hR _ _
    subst hs
    obtain ⟨Γ', hG', ⟨q', hq'⟩, hJ', hret, -, hKe, hrk, -, hbk, hex⟩ := key vs hvs callee _ stt hR (by simp [Good])
      (not_abortive_ret v)
    obtain ⟨⟨fs', hch', hE'⟩, hΦ'⟩ := hret v rfl
    refine Or.inl ⟨rfl, kf1_congr (u := stt) ⟨hJ', ⟨Γ', q', fs', hG', hq', hch', hE', hKe, hrk v rfl, hbk, hex⟩, hΦ'⟩
      rfl rfl rfl rfl⟩
  · intro s _ hs vs hvs callee r stt hR _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    cases hr'
    obtain ⟨Γ', hG', -, hJ', hret, hexc, hKe, hrk, hrke, hbk, -⟩ := key vs hvs callee r stt hR (good_of_abn habn) hna
    refine ⟨Γ', (G_locFree hF.hooks stt _ _).mpr hG', ⟨fun v hv => ?_, fun v hv => ?_⟩,
      fun _ _ => jrNZ_congr rfl hJ', fun _ _ => jrNZ_congr rfl hJ',
      fun _ _ => keepH_congr rfl rfl hKe, fun _ _ => keepH_congr rfl rfl hKe,
      fun v hv => rootK_congr (s := s0) (t := stt) rfl rfl rfl rfl (hrk v hv),
      fun v hv => rootK_congr (s := s0) (t := stt) rfl rfl rfl rfl (hrke v hv),
      fun _ _ => bkeep_congr rfl rfl hbk, fun _ _ => bkeep_congr rfl rfl hbk⟩
    · obtain ⟨h1, h2⟩ := hret v hv
      have hpe : Phi (emptyLocalsHOLFinite stt) = Phi stt := phi_locFree stt _ _
      exact ⟨chainX_locFree.loc stt _ |>.mpr h1, by omega⟩
    · obtain ⟨h1, h2⟩ := hexc v hv
      have hpe : Phi (emptyLocalsHOLFinite stt) = Phi stt := phi_locFree stt _ _
      exact ⟨chainX_locFree.loc stt _ |>.mpr h1, by omega⟩


end gcB

section tabB
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **`var dl = calculate_delegation_cost(to); k`** (`to = ev + 240`): `dl = <a, b, c>` with
`a = 0 → b = to`, and `b` a tracked block afterwards. -/
theorem hq_dlgB (hD : DlgHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {rn : MlS}
    {x : ExpHOL 64} {k : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    (hx : ev u0 x = some (.val (.word (e + BitVec.ofNat 64 240))))
    (hk : ∀ (a b cc : BitVec 64) (st : State σ), KC (b :: Bs) d st → (a = 0 → b = e + BitVec.ofNat 64 240) →
      (∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (wv [a, b, cc]) { st with locals := u0.locals })
        k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn (shK 3) (nm "calculate_delegation_cost") [x] k)
      QC := by
  have hvs0 : evs u0 [x] = some [.val (.word (e + BitVec.ofNat 64 240))] := evs_cons hx evs_nil
  have hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) →
      ArgsOK guestC Γ1 p1 dlgSg.params [.val (.word (e + BitVec.ofNat 64 240))] := by
    intro Γ1 p1 hrun hch _ _
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [dlgSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨_, rfl, addr_bufOK hfs hrun hch⟩
    · simp [dlgSg] at hpt
  refine hq_decCall (Q := QC) (FunSpec.and (FunSpec.and (sumSpecA_relX hD) dlg_fp)
      (dlg_val guestCtx_code)) (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨⟨hR, hfk⟩, _⟩ habn
    rw [hvs0] at hvs
    cases hvs
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, -⟩, hΦ2, hact2, -, -⟩ := kcall_tabQ hfs
        (fun g h => h) dlgE_dlg hu hA hR
        (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
      exact qcall_of_gk ha0 (d := 0)
        ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, hact2⟩ (by rw [rbd_abn habn]) r rfl hna
  · intro vs hvs callee v st ⟨⟨hR, hfk⟩, hV⟩ hsh
    rw [hvs0] at hvs
    cases hvs
    have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
    obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, hBs, hQ⟩, hΦ2, hact2, hkE, hkX⟩ := kcall_tabQ hfs
      (fun g h => h) dlgE_dlg hu hA hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    obtain ⟨a, b, cc, rfl, hab⟩ := hV hg v rfl
    have hab' : a = 0 → b = e + BitVec.ofNat 64 240 := fun h => by
      have := hab h
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at this
      exact this.symm
    refine hk a b cc st ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b' hb' => ?_⟩, hΦ2, hact2⟩ hab'
      (fun j hj => hkE j hj (by rw [evKs_dlg]; simp)) hkX
    rcases List.mem_cons.mp hb' with hb' | hb'
    · subst b'
      by_cases ha : a = 0
      · rw [hab' ha]; exact addr_bufOK hfs hrun2 hch2
      · exact hQ a b cc rfl ha p2 hrun2.2.1
    · exact hBs _ hb'

/-- **`var code = ext_code_of(x); k`** with `x` a tracked block: `code = <c, n>`,
`n + 63 < 2^64`. -/
theorem hq_ecoB (hE0 : EcoHyp σ) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {rn : MlS}
    {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat} {b : BitVec 64} {Bs : List (BitVec 64)} {u0 : State σ} (hu : KC Bs d u0) (hbB : b ∈ Bs)
    (hx : ev u0 x = some (.val (.word b)))
    (hk : ∀ (cc n : BitVec 64) (st : State σ), KC Bs d st → n.toNat + 63 < 2 ^ 64 →
      (∀ j ∈ evProtSlots, fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (wv [cc, n]) { st with locals := u0.locals })
        k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn (shK 2) (nm "ext_code_of") [x] k) QC := by
  have hvs0 : evs u0 [x] = some [.val (.word b)] := evs_cons hx evs_nil
  have hA : ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b' ∈ Bs, BufOK guestC Γ1 p1 b'.toNat 20) →
      ArgsOK guestC Γ1 p1 eocSg.params [.val (.word b)] := by
    intro Γ1 p1 hrun hch hE hB
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | i
    · simp only [eocSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv
      exact ⟨_, rfl, hB b hbB⟩
    · simp [eocSg] at hpt
  refine hq_decCall (Q := QC) (FunSpec.and (sumSpecA_relX hE0) eoc_fp)
    (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨hR, hfk⟩ habn
    rw [hvs0] at hvs
    cases hvs
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, -, -⟩, hΦ2, hact2, -, -⟩ := kcall_tabQ hfs
        (fun g h => h) dlgE_eco hu hA hR (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
      exact qcall_of_gk ha0 (d := 0)
        ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, hact2⟩ (by rw [rbd_abn habn]) r rfl hna
  · intro vs hvs callee v st ⟨hR, hfk⟩ hsh
    rw [hvs0] at hvs
    cases hvs
    have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
    obtain ⟨hJ2, ⟨Γ1, Γ2, p2, hrun2, hch2, hE2, hBs, hQ⟩, hΦ2, hact2, hkE, hkX⟩ := kcall_tabQ hfs
      (fun g h => h) dlgE_eco hu hA hR (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    obtain ⟨cc, n, rfl⟩ := wv2_of hsh
    exact hk cc n st ⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, hBs⟩, hΦ2, hact2⟩
      (hQ cc n rfl) (fun j hj => hkE j hj (by rw [evKs_eoc]; simp)) hkX


end tabB

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.kc_coreMB
#print axioms InitECandidate.Solver.MemSafe.Calls.kcall_em
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_emB
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_stB
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_st64B
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_gcB
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_dlgB
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_ecoB
