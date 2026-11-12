import InitECandidate.Solver.MemSafe.Calls.Kit
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CALL handlers' Hoare kit, part 2 (frames14): locals, single steps

* `LocsAre l xs` (an association list of known locals, newest first; `la_set`, `la_upd`,
  `la_ev`): read by `rfl` on `List.lookup`.
* `gk_stk` (`SP ≤ CAP`), `popSpecC` (`stack_pop`'s exact effect).
* Steps against the post `QCall` from `KCall` states: `hq_pure`, `hq_pop`, `hq_tab`, `hq_tabC`,
  `hq_charge`, `hq_em`, `hq_st`.
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

/-! ## Known locals -/

/-- The locals `l` contain the bindings `xs` (an association list, newest first). -/
def LocsAre (l : Locs) (xs : List (MlS × ValueHOL 64)) : Prop :=
  ∀ x v, xs.lookup x = some v → l.lookup x = some v

theorem la_nil (l : Locs) : LocsAre l [] := fun x v h => by simp at h

theorem la_set {s : State σ} {xs : List (MlS × ValueHOL 64)} (h : LocsAre s.locals xs) (n : MlS)
    (v : ValueHOL 64) : LocsAre (setVarHOLFinite n v s).locals ((n, v) :: xs) := by
  intro x w hx
  by_cases hxn : x = n
  · subst hxn
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hx
    subst hx
    exact lk_set_self _ _ _
  · have : (x == n) = false := by simpa using hxn
    simp only [List.lookup, this] at hx
    rw [lk_set_ne _ _ (Ne.symm hxn)]
    exact h x w hx

theorem la_upd {l : Locs} {xs : List (MlS × ValueHOL 64)} (h : LocsAre l xs) (n : MlS)
    (v : ValueHOL 64) : LocsAre (l.update (n, v)) ((n, v) :: xs) := by
  intro x w hx
  by_cases hxn : x = n
  · subst hxn
    simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hx
    subst hx
    exact Struct.lk_upd_self _ _ _
  · have : (x == n) = false := by simpa using hxn
    simp only [List.lookup, this] at hx
    rw [Struct.lk_upd_ne' _ _ (Ne.symm hxn)]
    exact h x w hx

theorem la_ev {s : State σ} {xs : List (MlS × ValueHOL 64)} (h : LocsAre s.locals xs) {x : MlS}
    {v : ValueHOL 64} (hx : xs.lookup x = some v) : ev s (lv x) = some v := h x v hx

theorem la_cong {l l' : Locs} {xs : List (MlS × ValueHOL 64)} (h : LocsAre l xs) (hl : l' = l) :
    LocsAre l' xs := by subst hl; exact h

/-! ## Stack facts -/

/-- `SP ≤ CAP` of the running frame. -/
theorem gk_stk {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u) :
    (fld u.memory e 16).toNat ≤ (fld u.memory e 232).toNat := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, -, -⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨q, hq, hord, hL, -, -, -, hW⟩ := id hG1
  have hsm := Hooks.guestHooksR_ev.get Γ1 u o hevo.1 hevo.2.1 (hW o hevo.1)
  obtain ⟨⟨h1, -⟩, -⟩ := hsm
  rw [← hob]
  exact h1

/-- **`stack_pop`'s exact effect** (no typing needed). -/
theorem popSpecC : FunSpec σ guestCtx (nm "stack_pop") (fun _ s r t => Good (some r) →
    ∀ o : Obj, s.globals.lookup Struct.gEv = some (.val (.word o.base)) →
      Struct.PopPost s o (some r) t) := by
  intro vs body callee rs hl s hs hloc r hr hg o ho
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero Struct.code_stack_pop hl
  have := Struct.popRun (X := guestCtx) ho s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this

/-! ## Steps -/

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **A post closed under locals changes and abnormal exits from `KCall` states.** -/
structure PostOK (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop where
  loc : ∀ ro (t : State σ) (l : Locs), Q ro t → Q ro { t with locals := l }
  abn : ∀ (r : PanSemResultExact 64) (t : State σ) (Bs : List (BitVec 64)) (d : Nat), Abn r →
    (¬ Abortive r → KCall Γ0 s0 p0 fs Bs d t) → Q (some r) t

/-- **A post closed under abnormal exits** (for `f(args); k` steps). -/
structure PostOKC (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (fs : List Frame)
    (Q : Option (PanSemResultExact 64) → State σ → Prop) : Prop where
  locA : ∀ r (t : State σ) (l : Locs), Q (some r) t → Q (some r) { t with locals := l }
  abn : ∀ (r : PanSemResultExact 64) (t : State σ) (Bs : List (BitVec 64)) (d : Nat), Abn r →
    (¬ Abortive r → KCall Γ0 s0 p0 fs Bs d t) → Q (some r) t

theorem PostOK.toC {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : PostOK Γ0 s0 p0 fs Q) : PostOKC Γ0 s0 p0 fs Q :=
  ⟨fun r t l hq => h.loc (some r) t l hq, h.abn⟩

/-- The join post: a normal end with `F`, an abnormal one with `QCall`. -/
def JP (Γ0 : Gam) (s0 : State σ) (F : State σ → Prop) (ro : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (ro = none ∧ F t) ∨ (ro ≠ none ∧ QCall Γ0 s0 ro t)

/-- `f; skip` and `f` have the same results. -/
theorem hoareG_unseq {X : Ctx 64} {P : State σ → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {p : ProgHOL 64}
    (h : HoareG σ X P (.seq p .skip) Q) : HoareG σ X P p Q := by
  intro s hs hp hg
  have h2 := h s hs hp
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq p .skip)] at h2
  dsimp only at h2
  cases h1 : (evaluateHOLFiniteState s p).1 with
  | none =>
      simp only [h1, evaluateHOLFiniteState_skip] at h2
      exact h2 (by simp [Good])
  | some r =>
      simp only [h1] at h2
      rw [h1] at hg
      exact h2 hg

theorem postOK_qc (ha0 : act s0 = 1) : PostOK Γ0 s0 p0 fs (QCall Γ0 s0) := by
  refine ⟨fun ro t l h => qcall_loc h l, fun r t Bs d habn hk r' hr' hna => ?_⟩
  cases hr'
  exact qcall_of_gk ha0 (kcall_gk (hk hna)) (by rw [rbd_abn habn]; exact Nat.zero_le _) r rfl hna

theorem postOKC_jp (ha0 : act s0 = 1) (F : State σ → Prop) :
    PostOKC Γ0 s0 p0 fs (JP Γ0 s0 F) := by
  refine ⟨fun r t l h => ?_, fun r t Bs d habn hk => Or.inr ⟨by simp,
    (postOK_qc (p0 := p0) (fs := fs) ha0).abn r t Bs d habn hk⟩⟩
  rcases h with ⟨h1, -⟩ | ⟨h1, h2⟩
  · cases h1
  · exact Or.inr ⟨h1, qcall_loc h2 l⟩

/-- **`var rn = f(args); k`** for a pure callee. -/
theorem hq_pure {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOK Γ0 s0 p0 fs Q) {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Rv : List (ValueHOL 64) → State σ → ValueHOL 64 → Prop}
    (hpf : Struct.PureR σ guestCtx f Rv) {u0 : State σ}
    (hk : ∀ vs, evs u0 args = some vs → ∀ callee v (st : State σ),
      st.memory = u0.memory → st.globals = u0.globals → st.memaddrs = u0.memaddrs →
      st.be = u0.be → Rv vs (callEntryStateHOLFinite u0 callee) v →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) Q := by
  refine hq_decCall (Q := Q) (FunSpec.and hpf (funSpec_dom f)) hQ.loc ?_ ?_
  · intro vs hvs callee r st ⟨hR, _⟩ habn
    obtain ⟨-, -, v, hv, -⟩ := hR (abn_good habn)
    exact absurd hv (Struct.abn_ne_ret habn v)
  · intro vs hvs callee v st ⟨hR, hd⟩ hsh
    obtain ⟨hm, hg, v', hv', hRv⟩ := hR (by simp [Good])
    cases hv'
    exact hk vs hvs callee v st hm hg hd.1 hd.2 hRv hsh

/-- **`var rn = stack_pop(); k`** from `KCall [] 0`: `SP < CAP` afterwards, `CAP` and `MEM_LEN`
kept. -/
theorem hq_pop (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {rn : MlS} {k : ProgHOL 64}
    {u0 : State σ} (hu : KC [] 0 u0)
    (hk : ∀ (v : ValueHOL 64) (st : State σ), KC [] 0 st → (∃ ws, ws.length = 4 ∧ v = wv ws) →
      (fld st.memory e 16).toNat < (fld st.memory e 232).toNat →
      fld st.memory e 232 = fld u0.memory e 232 → fld st.memory e 32 = fld u0.memory e 32 →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn (shK 4) (nm "stack_pop") [] k) QC := by
  obtain ⟨R, hRf, hstep⟩ := callSem_gE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs false false
    (nm "stack_pop") [] pop_cl
  have hgk := kcall_gk hu
  have he : u0.globals.lookup Struct.gEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs hgk)
  refine hq_decCall (Q := QC) (FunSpec.and hRf popSpecC) (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨hR, _⟩ habn
    exact fun r' hr' hna => by
      cases hr'
      have hk1 := hstep u0 hgk vs hvs callee r st hR (good_of_abn habn) hna
      rw [cbd_abn habn] at hk1
      exact qcall_of_gk ha0 hk1 (by rw [rbd_abn habn]) r rfl hna
  · intro vs hvs callee v st ⟨hR, hP⟩ hsh
    have hk1 := hstep u0 hgk vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    have hP' := hP (by simp [Good]) ⟨e, 0, 0⟩ he
    obtain ⟨hgl, hcase⟩ := hP'
    rcases hcase with ⟨hr, -⟩ | ⟨v', hr, hsp, hm⟩
    · cases hr
    have hSP := gk_stk hfs hgk
    refine hk v st (kcall_of_gk hk1) (eq_wv_of_shapeEq' hsh) ?_ ?_ ?_
    · have h16 : fld st.memory e 16 = fld u0.memory e 16 - 1 := by
        rw [hm]; exact fld_upd_eq (q := e) (k := 16) _
      have h232 : fld st.memory e 232 = fld u0.memory e 232 := by
        rw [hm]
        exact fld_upd_ne (q := e) (k := 16) (k' := 232) _ (off_ne e (by decide) (by decide) (by decide))
      have hsp' : fld u0.memory e 16 ≠ 0 := hsp
      have hne : (fld u0.memory e 16).toNat ≠ 0 := fun h =>
        hsp' (BitVec.eq_of_toNat_eq (by rw [h]; rfl))
      have h1 : (1 : BitVec 64) ≤ fld u0.memory e 16 := by
        rw [BitVec.le_def, show (1 : BitVec 64).toNat = 1 from rfl]; omega
      rw [h16, h232, BitVec.toNat_sub_of_le h1, show (1 : BitVec 64).toNat = 1 from rfl]
      omega
    · rw [hm]; exact fld_upd_ne (q := e) (k := 16) (k' := 232) _ (off_ne e (by decide) (by decide) (by decide))
    · rw [hm]; exact fld_upd_ne (q := e) (k := 16) (k' := 32) _ (off_ne e (by decide) (by decide) (by decide))

/-- **`var rn = f(args); k`** for a tab26 callee, with an extra value spec `Rx`. -/
theorem hq_tab (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1) {E : GEnv}
    (hgw : ∀ g ∈ E.gw, g ∈ [Hooks.gJn]) {f : MlS} {sg : Sig} {cs : List Cap} {n : Nat}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hkf : KeepsFp σ guestCtx f)
    (hok : PlainOKB E f sg cs n)
    {Rx : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hx : FunSpec σ guestCtx f Rx) {rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ArgsOK guestC Γ1 p1 sg.params vs)
    (hk : ∀ vs, evs u0 args = some vs → ∀ callee v (st : State σ), KC Bs d st →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      Rx vs (callEntryStateHOLFinite u0 callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k QC) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) QC := by
  refine hq_decCall (Q := QC)
    (FunSpec.and (FunSpec.and (sumSpecA_relX (tabJL_guestR f sg cs hmem)) hkf) hx)
    (fun ro t l h => qcall_loc h l) ?_ ?_
  · intro vs hvs callee r st ⟨⟨hR, hfk⟩, _⟩ habn
    exact fun r' hr' hna => by
      cases hr'
      obtain ⟨hk1, -⟩ := kcall_tab hfs hgw hok hu (hA vs hvs) hR (hfk (good_of_abn habn) hna)
        (good_of_abn habn) hna
      exact qcall_of_gk ha0 (kcall_gk hk1) (by rw [rbd_abn habn]; exact Nat.zero_le _) r rfl hna
  · intro vs hvs callee v st ⟨⟨hR, hfk⟩, hRx⟩ hsh
    obtain ⟨hk1, hkE, hkX⟩ := kcall_tab hfs hgw hok hu (hA vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact hk vs hvs callee v st hk1 hkE hkX hRx hsh

/-- **`f(args); k`** for a tab26 callee. -/
theorem hq_tabC (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOKC Γ0 s0 p0 fs Q) {E : GEnv}
    (hgw : ∀ g ∈ E.gw, g ∈ [Hooks.gJn]) {f : MlS} {sg : Sig} {cs : List Cap} {n : Nat}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hkf : KeepsFp σ guestCtx f)
    (hok : PlainOKB E f sg cs n) {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ} (hu : KC Bs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      (∀ b ∈ Bs, BufOK guestC Γ1 p1 b.toNat 20) → ArgsOK guestC Γ1 p1 sg.params vs)
    (hk : ∀ (st : State σ), KC Bs d st →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      fld st.memory e 112 = fld u0.memory e 112 →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) Q := by
  refine hq_callD (Q := Q)
    (FunSpec.and (sumSpecA_relX (tabJL_guestR f sg cs hmem)) hkf)
    hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨hR, hfk⟩ habn
    exact hQ.abn r st Bs d habn fun hna => (kcall_tab hfs hgw hok hu (hA vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna).1
  · intro vs hvs callee v st ⟨hR, hfk⟩
    obtain ⟨hk1, hkE, hkX⟩ := kcall_tab hfs hgw hok hu (hA vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact hk st hk1 hkE hkX

/-- **A `charge_gas` call on `KCall`**: the blocks survive; on a return `Φ` drops by the amount. -/
theorem kcall_charge (hfs : fs = (e, c) :: rest) {Bs : List (BitVec 64)} {d : Nat} {u0 : State σ}
    (hu : KC Bs d u0) {x : ExpHOL 64} {vs : List (ValueHOL 64)} (hvs : evs u0 [x] = some vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ PWrun tEV [8, 23] vs s Γ a) QCh vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hΦR : RCh guestC (Hooks.guestHooksR (σ := σ)) vs (callEntryStateHOLFinite u0 callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    KC Bs d st ∧ ∀ v, r = .returned v → ∃ a, vs = [.val (.word a)] ∧ Phi st + a.toNat = Phi u0 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, hB⟩, hΦ0, hact0⟩ := hu
  obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ1 (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hlen : vs.length = 1 := by rw [evs_len hvs]; rfl
  have hargs : ∀ ps : List PT, (∀ pt ∈ ps, pt = .any) → ps.length = 1 →
      ArgsOK guestC Γ1 p1 ps vs := fun ps hps hl => argsOK_any hps (by rw [hlen, hl])
  have he0 : gword u0 nmEv = some e := by rw [← hob]; exact hevo.2.2
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hBuf, -, -, -⟩ := kc_coreB hF hfs (sg := sg1n)
    (fun g h => by simp [sg1n] at h) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 23])
    (by decide) (by decide) (by decide) hrun hch hE hJ hR hfk hg hna
    (hargs _ (by simp [sg1n]) rfl) ⟨o, hevo⟩
    (fun a _ ⟨e', ⟨he', het', heb'⟩, k, hk, ha⟩ => by
      subst ha
      obtain ⟨q, -, hord, hL, -⟩ := id hGe
      have hsz := ev_size hF hL he' het'
      have hk' : k = 8 ∨ k = 23 := by simpa using hk
      exact ⟨Or.inl ⟨e', ⟨he', het', heb'⟩, k, hk, rfl⟩,
        noMsg_of_ty hL he' (by rw [het']; decide)
          (inO_cell hord hL he' (by rcases hk' with rfl | rfl <;> omega))⟩)
    (Or.inr fun Γ2 hq => by
      obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
      have he'' : e' = e := Option.some.inj (he'.symm.trans he0)
      subst he''
      rcases hcase with ⟨-, -, hm⟩ | ⟨-, hle, hm⟩
      · rw [hm]; exact le_refl _
      · rw [hm]; exact gs_charge hle)
    (Or.inl (by decide))
  refine ⟨⟨hJ2, ⟨Γ2, p2, hrun2, hch2, hE2, fun b hb => hBuf _ _ (hB b hb)⟩, by omega, ?_⟩,
    fun v hv => ?_⟩
  · rw [hact2]; omega
  obtain ⟨Γ', -, -, -, a, hva, -, -, hcase⟩ := hΦR hg Γ1 hGe
    ⟨p1, (ptrsOf_congr rfl).trans hrun.2.1, hargs _ (by simp [sg1]) rfl⟩
    ⟨fs, chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch⟩
  refine ⟨a, hva, ?_⟩
  rcases hcase with ⟨-, h⟩ | ⟨hr, -⟩
  · rw [phi_locFree.entry] at h; exact h
  · rw [hv] at hr; cases hr

/-- **`charge_gas(x); k`** on `KCall`. -/
theorem hq_charge (hfs : fs = (e, c) :: rest) (hP : Phi s0 < 2 ^ 64)
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (hQ : PostOKC Γ0 s0 p0 fs Q)
    {x : ExpHOL 64} {k : ProgHOL 64} {Bs : List (BitVec 64)} {d : Nat} {a : BitVec 64}
    {u0 : State σ} (hu : KC Bs d u0) (hx : ev u0 x = some (.val (.word a)))
    (hk : ∀ st : State σ, KC Bs (d + a.toNat) st → a.toNat + 1 < 2 ^ 64 →
      a ≤ fld u0.memory e 64 → st.memory = chargeMem u0.memory e a → st.globals = u0.globals →
      HoareG σ guestCtx (fun t => t = { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD (nm "charge_gas") [x]) k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := FunSpec.and (FunSpec.and (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec
    (charge_evSpec (σ := σ) guestCtx_code hF))) charge_fp) (charge_sumSpec guestCtx_code hF))
    (FunSpec.and (charge_spec (σ := σ) guestCtx_code) (funSpec_dom (σ := σ) (X := guestCtx) _))
  have hvs0 : evs u0 [x] = some [.val (.word a)] := evs_cons hx evs_nil
  refine hq_callD (Q := Q) hspec hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨⟨⟨hR, hfk⟩, hΦR⟩, _⟩ habn
    exact hQ.abn r st Bs d habn fun hna => (kcall_charge hfs hu hvs hR (hfk (good_of_abn habn) hna)
      hΦR (good_of_abn habn) hna).1
  · intro vs hvs callee v st ⟨⟨⟨hR, hfk⟩, hΦR⟩, hC, _⟩
    rw [hvs0] at hvs
    cases hvs
    have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
    obtain ⟨hk1, hret⟩ := kcall_charge hfs hu hvs0 hR (hfk hg (not_abortive_ret v)) hΦR hg
      (not_abortive_ret v)
    obtain ⟨a', ha', hΦa⟩ := hret v rfl
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at ha'
    subst ha'
    have hpos : 1 ≤ Phi st := by
      obtain ⟨-, ⟨Γ2, p2, -, hch2, -⟩, -⟩ := hk1
      rw [phi_eq hch2.chain, hfs, wsum_cons]; have := wt_pos st.memory (e, c); omega
    obtain ⟨e', a'', hva, he', hgl, hcase⟩ := hC hg
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hva
    subst hva
    have he'' : e' = e := by
      have := gk_gword hfs (kcall_gk hu)
      exact Option.some.inj (he'.symm.trans this)
    subst he''
    rcases hcase with ⟨hr, -, -⟩ | ⟨-, hle, hm⟩
    · cases hr
    obtain ⟨-, -, hΦu, -⟩ := hu
    refine hk st ⟨hk1.1, hk1.2.1, by omega, hk1.2.2.2⟩ (by omega) hle hm hgl

/-- **`extend_memory(x); k`** on `KCall []`. -/
theorem hq_em (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {k : ProgHOL 64} {d : Nat}
    {X : BitVec 64} {u0 : State σ} (hu : KC [] d u0) (hx : ev u0 x = some (.val (.word X)))
    (h32 : X.toNat % 32 = 0) (hb : (fld u0.memory e 32).toNat + X.toNat ≤ 2 ^ 40)
    (hk : ∀ st : State σ, KC [] d st →
      (fld st.memory e 32).toNat = (fld u0.memory e 32).toNat + X.toNat →
      (∀ j ∈ evProtSlots, j ∉ [4, 5] → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
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
    exact hk st (kcall_of_gk hk1) hlen hkeep

/-- **`st ev + k, e1; kont`** into a driver slot `j ∉ {8, 24, 13}` on `KCall []`. -/
theorem hq_st (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {j k : Nat} (hk : k = 8 * j) (hj : j ∈ evDriverSlots)
    (hj8 : j ≠ 8) (hj24 : j ≠ 24) (hj13 : j ≠ 13) {e1 : ExpHOL 64} {kont : ProgHOL 64}
    {d : Nat} {u0 : State σ} (hu : KC [] d u0)
    (hx : ∀ v, ev u0 e1 = some v → ∃ x, v = .val (.word x))
    (hc : ∀ (x : BitVec 64) (st : State σ), KC [] d st →
      st.memory = upd u0.memory (e + BitVec.ofNat 64 k) x →
      st.locals = u0.locals → HoareG σ guestCtx (fun t => t = st) kont Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (stG "ev" k e1) kont) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hgk := kcall_gk hu
  refine hoareG_seq (R := fun ro t => ro = none ∧ ∃ x, KC [] d t ∧
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
  exact kcall_of_gk (gk_topOther hF hfs hgk hj hj8 hj24 hj13 rfl rfl rfl rfl)

end steps

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.la_set
#print axioms InitECandidate.Solver.MemSafe.Calls.la_upd
#print axioms InitECandidate.Solver.MemSafe.Calls.gk_stk
#print axioms InitECandidate.Solver.MemSafe.Calls.popSpecC
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_pure
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_pop
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_tab
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_tabC
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_charge
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_em
#print axioms InitECandidate.Solver.MemSafe.Calls.hq_st
