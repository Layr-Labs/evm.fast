import InitECandidate.Solver.MemSafe.Ops7.K3
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The CREATE handlers' Hoare kit (sonnet-create)

Window steps (`alloc`, a tab26 call inside a heap window) against a general post `Q` closed under
locals and abnormal exits (`PostOK`, frames14's `Calls.Kit2`), and `KCall`-lane steps for the
CREATE family:

* `kcall_of_gkb`: a `GKB q 20` state is a `KCall [q]` state;
* `hq_winAlloc` / `hq_winCall`: `hoareG_winAllocT` / `hoareG_winCallT` against `PostOK` posts;
* `hq_tabH`: `f(args); k` for a callee whose summary is a *hypothesis* (`CSumm`) instead of a
  `tab26` entry (`compute_contract_address`);
* `hq_dec`: `var x = e; k` on `KCall`;
* `hq_gcr`: `var started = generic_create(args); <tail>` (the chain may grow by a child frame).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ops7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem kcall_of_gkb {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {q : BitVec 64}
    {d : Nat} {u : State σ}
    (h : GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs q.toNat 20 d u) :
    KCall Γ0 s0 p0 fs [q] d u := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE, hb⟩, hΦ, ha⟩ := h
  refine ⟨hJ, ⟨Γ1, p1, hrun, hch, hE, fun b hb' => ?_⟩, hΦ, ha⟩
  simp only [List.mem_singleton] at hb'
  subst hb'
  exact hb

section win
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs

/-- **`var q = alloc(x); k`** in a window, against a `PostOK` post. -/
theorem hq_winAlloc (hfs : fs = (e, c) :: rest)
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (hQ : PostOK Γ0 s0 p0 fs Q)
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0) {x : ExpHOL 64} {N : BitVec 64}
    (hx : ev u0 x = some (.val (.word N))) {rn : MlS} {k : ProgHOL 64}
    (hk : ∀ (st : State σ) (q : BitVec 64) (pc' : Ptrs),
      st.memory = u0.memory → pc.Mono pc' →
      WJ d um m Γc pc' (setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) →
      q.toNat % 8 = 0 → q.toNat + N.toNat ≤ heapEnd → TmpBuf Γc pc' q.toNat N.toNat →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q))
        { st with locals := u0.locals }) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [x] k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hf := funSpec_and (allocSpec_alloc (σ := σ) guestCtx_code) (funSpec_be' (nm "alloc"))
  obtain ⟨hGu, hpu⟩ := winI_G hw
  obtain ⟨qq, hqq, hordc, hLc, -⟩ := id hGu
  obtain rfl : pc = qq := Option.some.inj (hpu.symm.trans hqq)
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, hret⟩ :=
      hR (by simp [Good]) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨q, hv, hq8, hlive, hnotal⟩ := hret v rfl
    subst hv
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw
      (t := setVarHOLFinite rn (.val (.word q)) { st with locals := s.locals }) hm hgl hd hbe hp'
      hord' hmono
    have hbuf : TmpBuf Γc p' q.toNat N.toNat := by
      refine ⟨⟨hlive.1, hlive.2⟩, ?_⟩
      rintro a ⟨ha8, hl, hh⟩
      refine ⟨fun hin => ?_, Helpers.allocated_of_live hlive (by omega) (by omega)⟩
      exact hnotal a.toNat (by omega) (by omega) (Helpers.allocated_of_inObj hLc hin)
    have hbnd : q.toNat + N.toNat ≤ heapEnd := by
      have h1 := hlive.2
      have h2 := hord'.2.1
      omega
    exact hoareG_conseq (hk st q p' hm hmono hW hq8 hbnd hbuf) (fun _ _ h => h)
      fun r t _ _ hq => hQ.loc r t _ hq
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, -⟩ :=
      hR (good_of_abn habn) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw hm hgl hd hbe hp' hord' hmono
    exact hQ.abn r _ [] d habn fun hna =>
      kcall_congr (kcall_of_gk (gk_of_win hF hfs hW)) rfl rfl rfl rfl

/-- **`f(args); k`** for a plain `tab26` callee inside a window, against a `PostOK` post. -/
theorem hq_winCall (hfs : fs = (e, c) :: rest)
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (hQ : PostOK Γ0 s0 p0 fs Q)
    {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false) (hmem : (f, sg, ([] : List Cap)) ∈ ShardsJL.tab26)
    (hfp : KeepsFp σ guestCtx f) {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0)
    (hargs : ∀ vs, evs u0 args = some vs → ArgsOK guestC Γc pc sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals →
      (∃ Γ2 p2, WJ d um m Γ2 p2 t ∧ ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) →
      HoareG σ guestCtx (fun s => s = t) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := tabJL_guestR (σ := σ) f sg [] hmem
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t.locals = u0.locals ∧
        ∃ Γ2 p2, WJ d um m Γ2 p2 t ∧ ∀ b n, TmpBuf Γc pc b n → TmpBuf Γ2 p2 b n) ∨
      (ro ≠ none ∧ Q ro t))
    (hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hfp) ?_ ?_)
    (fun r t _ hr _ h => h.elim (fun h' => absurd h'.1 hr) (fun h' => h'.2))
    ?_
  · intro u _ hu vs hvs callee v st ⟨hR, hfk⟩ _
    subst hu
    obtain ⟨Γ2, p2, hw2, htr⟩ := win_stepT hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact Or.inl ⟨rfl, rfl, Γ2, p2, winI_congr hF.hooks hw2 rfl rfl rfl rfl, htr⟩
  · intro u _ hu vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hu
    refine Or.inr ⟨by simp, ?_⟩
    exact hQ.abn r _ [] d habn fun hna => by
      obtain ⟨Γ2, p2, hw2, -⟩ := win_stepT hF.hooks hgw hgr hw (hargs vs hvs) hR
        (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
      exact kcall_congr (kcall_of_gk (gk_of_win hF hfs hw2)) rfl rfl rfl rfl
  · intro t ht hP hg
    rcases hP with ⟨-, hl, hex⟩ | ⟨h, -⟩
    · exact hk t hl hex t ht rfl hg
    · exact absurd rfl h

end win

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}
variable [Fact (ChainOf s0 fs)]

local notation "KC" => KCall Γ0 s0 p0 fs
local notation "QC" => QCall Γ0 s0

/-- **`f(args); k`** for a callee with a hypothesized capability summary, on `KCall`. -/
theorem hq_tabH (hfs : fs = (e, c) :: rest) {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : PostOKC Γ0 s0 p0 fs Q) {E : GEnv}
    (hgw : ∀ g ∈ E.gw, g ∈ [Hooks.gJn]) {f : MlS} {sg : Sig} {cs : List Cap} {n : Nat}
    (hS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hkf : KeepsFp σ guestCtx f)
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
    (FunSpec.and (sumSpecA_relX hS) hkf)
    hQ.locA ?_ ?_
  · intro vs hvs callee r st ⟨hR, hfk⟩ habn
    exact hQ.abn r st Bs d habn fun hna => (kcall_tab hfs hgw hok hu (hA vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna).1
  · intro vs hvs callee v st ⟨hR, hfk⟩
    obtain ⟨hk1, hkE, hkX⟩ := kcall_tab hfs hgw hok hu (hA vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact hk st hk1 hkE hkX

/-- **`var n = e; k`** on `KCall` (a pure expression). -/
theorem hq_dec {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ ro (t : State σ) (l : Locs), Q ro t → Q ro { t with locals := l })
    {n : MlS} {sh : ShapeHOL} {ex : ExpHOL 64} {k : ProgHOL 64} {u0 : State σ}
    (hk : ∀ v, ev u0 ex = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite n v u0) k Q) :
    HoareG σ guestCtx (fun t => t = u0) (.dec n sh ex k) Q :=
  Struct.hoareG_dec' hQ fun s _ hs v hv hsh => by subst hs; exact hk v hv hsh

end steps

end InitECandidate.Solver.MemSafe.Ops7

#print axioms InitECandidate.Solver.MemSafe.Ops7.kcall_of_gkb
#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_winAlloc
#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_winCall
#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_tabH
#print axioms InitECandidate.Solver.MemSafe.Ops7.hq_dec
