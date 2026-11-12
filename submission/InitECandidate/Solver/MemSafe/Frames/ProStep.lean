import InitECandidate.Solver.MemSafe.Frames.StartX
import InitECandidate.Solver.MemSafe.Frames.ProCode
import InitECandidate.Solver.MemSafe.Frames.GcPre
import InitECandidate.Solver.MemSafe.Frames.FinGuest
import InitECandidate.Solver.MemSafe.Frames.LogSub
import InitECandidate.Solver.MemSafe.LogQ

/-!
# `frame_prologue`: the tracked facts and the call steps (frames10, task 1)

`frame_prologue`'s body (`ProCode.proBody`) runs on the running frame `(e, c)` of the chain `fs`
at entry. Its calls are summarized callees whose `prot` writes lie in `PWtopM ks` (`ks ⊆ gasKs`:
the running EV's gas slots, outside every frame / message record otherwise) and which keep
`frame_mem_ptr`. Such a call keeps

* **`KP … u`**: `JrNZ`, a run from the entry, `ChainL` / `ChainE GP GR` of the **same** chain `fs`,
  `Φ` not raised, and the running EV's `EV_MSG` (112) unchanged (`= mg`, the `msg` local).

* `kp_same`, `kLeX_of_kp`, **`kp_step`** (one call), `hoareG_pt`;
* **`hoareG_kpCallD`** (`f(args);`) and **`hoareG_kpDecCall`** (`var x = f(args); k`), with post
  **`PS`**: a normal end with `KP` and the caller's locals, or an abnormal one with `KP` when
  non-abortive.
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

variable {σ : Type} {X : Ctx 64}

/-- **The tracked facts in `frame_prologue`'s body**: from the entry `s0` (typing `Γ0`, pointers
`p0`), a run, the chain `fs` with its extension, `Φ` not raised, `JrNZ`, and the running EV's
`EV_MSG` equal to `mg`. -/
def KP (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (e mg : BitVec 64) (u : State σ) : Prop :=
  JrNZ u ∧ ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧
    ChainE GP GR Γ1 u fs ∧ Phi u ≤ Phi s0 ∧ fld u.memory e 112 = mg

/-- The post of a step from a state with locals `L`: a normal end with `K` and the locals `L`, or
an abnormal end with `K` when non-abortive. -/
def PS (K : State σ → Prop) (L : Locs) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none ∧ K t ∧ t.locals = L) ∨ (ro ≠ none ∧ ∀ r, ro = some r → ¬ Abortive r → K t)

section
variable {H : Hooks σ}

theorem kp_same (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64} {u t : State σ}
    (h : KP H gw Γ0 s0 p0 fs e mg u) (hm : t.memory = u.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) : KP H gw Γ0 s0 p0 fs e mg t := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := h
  exact ⟨jrNZ_congr hg hJ, Γ1, p1, runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch,
    chainE_congr hm hg hE, by rw [phi_congrMG hm hg]; exact hΦ, by rw [hm]; exact h112⟩

theorem kp_locals (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e mg : BitVec 64} {u : State σ}
    (h : KP H gw Γ0 s0 p0 fs e mg u) (l : Locs) : KP H gw Γ0 s0 p0 fs e mg { u with locals := l } :=
  kp_same hH h rfl rfl rfl rfl

theorem kLeX_of_kp {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {u : State σ} (h : KP H gw Γ0 s0 p0 fs e mg u) (hs0 : ChainOf s0 fs) :
    KLeX H gw Γ0 s0 p0 u :=
  let ⟨_, Γ1, p1, hrun, hch, hE, hΦ, _⟩ := h
  ⟨Γ1, p1, hrun, ⟨fs, hch, hE⟩, hΦ, rootK_of_same hs0 hch.chain⟩

/-- The slot facts of a footprint `ks ⊆ gasKs`. -/
theorem gasKs_facts {ks : List Nat} (hks : ∀ k ∈ ks, k ∈ gasKs) :
    (∀ k ∈ ks, 8 * k + 8 ≤ 280) ∧ (∀ j ∈ [3, 5, 13], j ∉ ks) ∧ (18 ∉ ks ∧ 27 ∉ ks) ∧
      (∀ k ∈ ks, k ∉ evXSlots) ∧ 14 ∉ ks := by
  have h : ∀ k ∈ ks, k = 8 ∨ k = 9 ∨ k = 23 ∨ k = 24 := fun k hk => by
    have := hks k hk; simpa [gasKs] using this
  refine ⟨fun k hk => by rcases h k hk with rfl | rfl | rfl | rfl <;> omega, ?_,
    ⟨fun hk => by rcases h _ hk with h' | h' | h' | h' <;> omega,
      fun hk => by rcases h _ hk with h' | h' | h' | h' <;> omega⟩,
    fun k hk => by rcases h k hk with rfl | rfl | rfl | rfl <;> decide,
    fun hk => by rcases h _ hk with h' | h' | h' | h' <;> omega⟩
  intro j hj hjk
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at hj
  rcases h j hjk with rfl | rfl | rfl | rfl <;> omega

/-- **One summarized call from a `KP` state** keeps `KP` (same chain `fs`). -/
theorem kp_step (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r)
    (hA : ∀ Γ1 p1, ptrsOf u = some p1 → G guestC H Γ1 u → ChainL guestC tEV tCK Γ1 u fs →
      ChainE GP GR Γ1 u fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ Γ1 a, G guestC H Γ1 u → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ Γ1 Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat) :
    KP H gw Γ0 s0 p0 fs e mg st := by
  have hH := hF.hooks
  obtain ⟨hks8, hnot, hrd, hksX, h14⟩ := gasKs_facts hks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨hargs, hpre⟩ := hA Γ1 p1 hp1 hG1 hch hE
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopM hord hL (hpw Γ1 a hrun.2.2.2.2.2.1 hp hw))
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
  have hfp : p2.fp = q.fp := fpQ_of_fp hfpk q p2 hpe hc.2.1
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw Γ1 a hG1 hp hw).1⟩
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat := by
    rcases hgas with h | h
    · subst h; exact Or.inl ⟨by simp, by simp⟩
    · exact Or.inr (h Γ1 Γ2 hQ)
  obtain ⟨hch2, hΦ2, -, -⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas' (Or.inl hrd)
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, -⟩, -⟩ := hfs'
  rw [← he1] at he'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreM hF xCfg_guest (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw Γ1 a hG1 hp hw) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs hEe
  have hpk := sumCore_protW hcT hGe hac (fun a _ h => h.2)
  have hesz : ∀ x ∈ Γ1, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks8 k hk; omega
  have hsz := ev_size hF hL hoe hoet
  have k14 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 14)
    (by unfold Obj.HasSlot; omega) (by rw [hoet]; decide) fun _ => h14
  rw [hoeb] at k14
  simp only [show (8 * 14 : Nat) = 112 from rfl] at k14
  refine ⟨jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ), Γ2, p2, hrun2, hch2, hE2,
    ?_, ?_⟩
  · rw [phi_locFree.entry] at hΦ2; omega
  · rw [k14]; exact h112

/-- **One summarized call of a log writer from a `KP` state** keeps `KP` (package L). -/
theorem kp_stepL (hLH : Hooks.LstHooks H) (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}
    (hfs : fs = (e, c) :: rest) {sg : Sig} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ gasKs)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
      (callEntryStateHOLFinite u callee) r st)
    (hfpk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r)
    (hA : ∀ Γ1 p1, ptrsOf u = some p1 → G guestC H Γ1 u → ChainL guestC tEV tCK Γ1 u fs →
      ChainE GP GR Γ1 u fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ Pre vs (callEntryStateHOLFinite u callee) Γ1)
    (hpw : ∀ Γ1 a, G guestC H Γ1 u → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u callee) Γ1 a →
      PWtopL tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ Γ1 Γ2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u.memory e 64).toNat + (fld u.memory e 192).toNat)
    (hSubQ : ∀ Γ1 Γ2 p2, Q vs (callEntryStateHOLFinite u callee) Γ1 r st Γ2 → ptrsOf st = some p2 →
      LogSub Γ1 Γ2 p2.hp u.memory st.memory) :
    KP H gw Γ0 s0 p0 fs e mg st := by
  have hH := hF.hooks
  obtain ⟨hks8, hnot, hrd, hksX, h14⟩ := gasKs_facts hks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨hargs, hpre⟩ := hA Γ1 p1 hp1 hG1 hch hE
  obtain ⟨Γ2, p2, hrun2, hc, hQ⟩ := run_callT hH hsub hrun hR hg hna hargs hpre
    (fun a ⟨hp, hw⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_pwtopL hord hL (hpw Γ1 a hrun.2.2.2.2.2.1 hp hw))
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
  have hfp : p2.fp = q.fp := fpQ_of_fp hfpk q p2 hpe hc.2.1
  have hcT : SumCore guestC H sg (fun a => ProtCell guestC Γ1 a ∧
      PWtop tEV tCK ks vs (callEntryStateHOLFinite u callee) Γ1 a) Γ1
      (callEntryStateHOLFinite u callee) vs r st Γ2 q p2 :=
    sumCore_pwM hc fun a ⟨hp, hw⟩ => ⟨hp, (hpw Γ1 a hG1 hp hw).1⟩
  subst hfs
  have hgas' : (8 ∉ ks ∧ 24 ∉ ks) ∨ (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld (callEntryStateHOLFinite u callee).memory e 64).toNat +
        (fld (callEntryStateHOLFinite u callee).memory e 192).toNat := by
    rcases hgas with h | h
    · subst h; exact Or.inl ⟨by simp, by simp⟩
    · exact Or.inr (h Γ1 Γ2 hQ)
  obtain ⟨hch2, hΦ2, -, -⟩ := pa_coreX hF hGe hche hks8 hnot hgwE hcT hac hfp hgas' (Or.inl hrd)
  obtain ⟨e', c', rest', hfs', he', -, -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨he1, -⟩, -⟩ := hfs'
  rw [← he1] at he'
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hche.objs (e, c) (List.mem_cons_self ..)).1
  have hE2 := chainE_sumCoreL hLH hF (by decide) hks8 hksX hGe hc hac
    (fun a hp hw => hpw Γ1 a hG1 hp hw.2) he' ⟨oe, hoe, hoeb, hoet⟩ hche.objs
    (hSubQ Γ1 Γ2 p2 hQ hc.2.1) hEe
  have hpk := sumCore_protW hcT hGe hac (fun a _ h => h.2)
  have hesz : ∀ x ∈ Γ1, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks8 k hk; omega
  have hsz := ev_size hF hL hoe hoet
  have k14 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 14)
    (by unfold Obj.HasSlot; omega) (by rw [hoet]; decide) fun _ => h14
  rw [hoeb] at k14
  simp only [show (8 * 14 : Nat) = 112 from rfl] at k14
  refine ⟨jrNZ_sumCore (by decide) hgJ hc (jrNZ_congr (s := u) rfl hJ), Γ2, p2, hrun2, hch2, hE2,
    ?_, ?_⟩
  · rw [phi_locFree.entry] at hΦ2; omega
  · rw [k14]; exact h112

/-- A Hoare triple from every state of `P`, from triples from each single state. -/
theorem hoareG_pt {P : State σ → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ u, P u → HoareG σ X (fun t => t = u) p Q) : HoareG σ X P p Q :=
  fun s hs hp hg => h s hp s hs rfl hg

/-- **`f(args);` from a `KP` state.** -/
theorem hoareG_kpCallD (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat) :
    HoareG σ X (fun t => t = u0) (callD f args) (PS (KP H gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_step hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hp hG hL hE).1, (hA vs hvs Γ1 p1 hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
  refine hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    exact Or.inl ⟨rfl, kp_locals hH (key vs hvs callee _ st hR hfk (by simp [Good])
      (not_abortive_ret v)) _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna) _

/-- **`f(args);` of a log writer from a `KP` state** (package L). -/
theorem hoareG_kpCallDL (hLH : Hooks.LstHooks H) (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopL tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    (hSubQ : ∀ vs callee Γ1 r st Γ2 p2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      ptrsOf st = some p2 → LogSub Γ1 Γ2 p2.hp u0.memory st.memory) :
    HoareG σ X (fun t => t = u0) (callD f args) (PS (KP H gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_stepL hLH hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hp hG hL hE).1, (hA vs hvs Γ1 p1 hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
      (fun Γ1 Γ2 p2 hq hp2 => hSubQ vs callee Γ1 r st Γ2 p2 hq hp2)
  refine hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    exact Or.inl ⟨rfl, kp_locals hH (key vs hvs callee _ st hR hfk (by simp [Good])
      (not_abortive_ret v)) _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna) _

/-- **`var rn = f(args); k` from a `KP` state.** -/
theorem hoareG_kpDecCall (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    {mg : BitVec 64} (hfs : fs = (e, c) :: rest) {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X guestC H f sg Pre PW Q) (hkf : KeepsFp σ X f)
    (hsub : ∀ g, g ∈ sg.gw → g ∈ gw) (hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut sg.gw)
    (hks : ∀ k ∈ ks, k ∈ gasKs) {u0 : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, ptrsOf u0 = some p1 → G guestC H Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC H Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK ks vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    (hgas : ks = [] ∨ ∀ vs callee Γ1 r st Γ2, Q vs (callEntryStateHOLFinite u0 callee) Γ1 r st Γ2 →
      (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
        (fld u0.memory e 64).toNat + (fld u0.memory e 192).toNat)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ v (st : State σ), KP H gw Γ0 s0 p0 fs e mg st →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ ro (t : State σ), ro ≠ none →
      (∀ r, ro = some r → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg t) → Qk ro t) :
    HoareG σ X (fun t => t = u0) (.decCall rn sh f args k) Qk := by
  have hH := hF.hooks
  have key : ∀ vs, evs u0 args = some vs → ∀ callee r st,
      SumRelX guestC H sg Pre (fun vs s Γ a => ProtCell guestC Γ a ∧ PW vs s Γ a) Q vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ¬ Abortive r →
        st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame) →
      Good (some r) → ¬ Abortive r → KP H gw Γ0 s0 p0 fs e mg st := by
    intro vs hvs callee r st hR hfk hg hna
    exact kp_step hF hfs hsub hgwE hgJ hks hu hR (hfk hg hna) hg hna
      (fun Γ1 p1 hp hG hL hE =>
        ⟨(hA vs hvs Γ1 p1 hp hG hL hE).1, (hA vs hvs Γ1 p1 hp hG hL hE).2 callee⟩)
      (fun Γ1 a hG hp hw => hpw vs callee Γ1 a hG hp hw)
      (hgas.imp id fun h Γ1 Γ2 hq => h vs callee Γ1 r st Γ2 hq)
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hkf) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ _
    subst hs
    exact hk v st (key vs hvs callee _ st hR hfk (by simp [Good]) (not_abortive_ret v))
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine hab _ _ (by simp) fun r' hr' hna => ?_
    simp only [Option.some.injEq] at hr'
    cases hr'
    exact kp_locals hH (key vs hvs callee r st hR hfk (good_of_abn habn) hna) _

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.kp_step
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_kpCallD
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_kpDecCall
