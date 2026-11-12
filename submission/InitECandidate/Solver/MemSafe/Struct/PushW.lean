import InitECandidate.Solver.MemSafe.Struct.Push

/-!
# `stack_push_word`, `stack_push_bool`

Both call `stack_push` once and return `0`; their summaries are those of `stack_push`
(`PWev T [1, 2, 29]`, `PushQ T`), with a one-word argument.
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {T : STy}

def sgW : Sig := ⟨[.any], [], [], true⟩

theorem argsOK_any1 {Γ : Gam} {p : Ptrs} {vs : List (ValueHOL 64)} (h : vs.length = 1) :
    ArgsOK C Γ p [.any] vs := by
  refine ⟨h.symm, fun i pt v hpt _ => ?_⟩
  rcases i with _ | i <;> simp at hpt
  subst hpt; trivial

theorem argCells_any1 {vs : List (ValueHOL 64)} {a : BitVec 64} : ¬ ArgCells [.any] vs a := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
  · rcases i with _ | i <;> simp at hn
  · rcases i with _ | i <;> simp at hj

theorem pwev_congr {T : STy} {ks : List Nat} {vs vs' : List (ValueHOL 64)} {s s' : State σ}
    {Γ : Gam} {a : BitVec 64} (hg : s'.globals = s.globals) (h : PWev T ks vs s' Γ a) :
    PWev T ks vs' s Γ a := by
  obtain ⟨e, ⟨he, het, hev⟩, k, hk, rfl⟩ := h
  exact ⟨e, ⟨he, het, by rw [← hg]; exact hev⟩, k, hk, rfl⟩

/-- The post of `stack_push(args);` in a wrapper. -/
def PCP (C : Cfg) (H : Hooks σ) (T : STy) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (W : ValueHOL 64)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r ≠ none → Fin C H sgW (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [W] s0 Γ0 a) Γ0 s0 [W]
      (PushQ T) r t) ∧
    (r = none → ∃ Γ', Trk C H Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [W] s0 Γ0 a)
      Γ' t ∧ PushQ T [W] s0 Γ0 (.returned (.val (.word 0))) t Γ')

/-- `stack_push(args);` from a state agreeing with the entry. -/
theorem push_call (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hSA : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hCP : Summ σ X C H (nm "memcpy") (sgMemcpy gr)) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {W : ValueHOL 64} (hs0 : InCtx s0 X) (hG0 : G C H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {args : List (ExpHOL 64)} (hlen : ∀ (u : State σ) vs, evs u args = some vs → vs.length = 1) :
    HoareG σ X (fun u => u.memory = s0.memory ∧ u.globals = s0.globals ∧ u.be = s0.be)
      (callD (nm "stack_push") args) (PCP C H T Γ0 s0 p0 W) := by
  have hP := sumSpec_rel (sum_stack_push hC hH hM hE hK hSA hCP)
  have hG0' := hG0
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := hG0'
  rw [hp0] at hq0; cases hq0
  have hT0 : ∀ u : State σ, InCtx u X → u.memory = s0.memory → u.globals = s0.globals →
      u.be = s0.be → Trk C H Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [W] s0 Γ0 a)
        Γ0 u :=
    fun u hu hm hg hb => trk_congr hH (trk_refl hG0 hp0) hm hg (hu.2.1.trans hs0.2.1.symm) hb
  have hcall : ∀ u : State σ, InCtx u X → u.memory = s0.memory → u.globals = s0.globals →
      u.be = s0.be → ∀ vs, evs u args = some vs → ∀ callee r (st : State σ),
      (SumRel C H sgPush (fun _ _ _ => True) (PWev T [1, 2, 29]) (PushQ T) vs
        (callEntryStateHOLFinite u callee) r st ∧ st.be = (callEntryStateHOLFinite u callee).be) →
      InCtx st X → Good (some r) →
      ∃ Γ', Trk C H Γ0 s0 p0 (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [W] s0 Γ0 a) Γ' st ∧
        PushQ T vs (callEntryStateHOLFinite u callee) Γ0 r st Γ' := by
    intro u hu hm hg hb vs hvs callee r st ⟨hR, hbe⟩ hst hgood
    obtain ⟨Γ', p, p', ht, -, hQ⟩ := trk_callSum (sg := sgPush) (Pre := fun _ _ _ => True) (PW' := PWev T [1, 2, 29])
      (Q := PushQ T) (t' := callEntryStateHOLFinite u callee) hH (hT0 u hu hm hg hb) hord0 hL0
      rfl rfl rfl rfl hR hgood (fun _ _ => argsOK_any1 (hlen u vs hvs)) trivial
      (fun _ _ => by simp [sgPush]) (fun a h => absurd h argCells_any1)
      (fun a hpc hpw => ⟨hpc, pwev_congr (s' := callEntryStateHOLFinite u callee) hg hpw⟩) (hst.2.1.trans hu.2.1.symm) hbe
    exact ⟨Γ', ht, hQ⟩
  · refine hoareG_callD hP ?_ ?_
    · intro u hu ⟨hm, hg, hb⟩ vs hvs callee v st hR hst
      obtain ⟨Γ', ht, hQ⟩ := hcall u hu hm hg hb vs hvs callee _ st hR hst (by simp)
      refine ⟨fun h => absurd rfl h, fun _ => ⟨Γ', trk_congr hH ht rfl rfl rfl rfl, fun e he => ?_⟩⟩
      have he' : EvObj T Γ0 (callEntryStateHOLFinite u callee) e :=
        ⟨he.1, he.2.1, by show u.globals.lookup gEv = _; rw [hg]; exact he.2.2⟩
      obtain ⟨q1, q2⟩ := hQ e he'
      refine ⟨fun _ => ?_, fun hlt => ?_⟩
      · have := q1 ⟨v, rfl⟩
        unfold fSP at this ⊢
        rw [show (callEntryStateHOLFinite u callee).memory = s0.memory from hm] at this
        exact this
      · unfold fSP fCAP at hlt
        rw [← hm] at hlt
        obtain ⟨a1, a2, -, a4, a5⟩ := q2 hlt
        refine ⟨a1, (ptrsOf_congr rfl).trans (a2.trans ((ptrsOf_congr rfl).trans (ptrsOf_congr hg))),
          ⟨_, rfl⟩, ?_, ?_⟩
        · unfold fCAP at a4 ⊢; exact a4.trans (by rw [show (callEntryStateHOLFinite u callee).memory =
            s0.memory from hm])
        · unfold fSTK at a5 ⊢; exact a5.trans (by rw [show (callEntryStateHOLFinite u callee).memory =
            s0.memory from hm])
    · intro u hu ⟨hm, hg, hb⟩ vs hvs callee r st hR hst habn
      obtain ⟨Γ', ht, hQ⟩ := hcall u hu hm hg hb vs hvs callee r st hR hst (abn_good habn)
      refine ⟨fun _ => fin_of_trk hH (trk_congr hH ht rfl rfl rfl rfl) hp0 (fun h => by cases h)
        (fun _ _ v hv => absurd hv (abn_ne_ret habn v)) fun t' _ _ e he => ?_, fun h => by cases h⟩
      have he' : EvObj T Γ0 (callEntryStateHOLFinite u callee) e :=
        ⟨he.1, he.2.1, by show u.globals.lookup gEv = _; rw [hg]; exact he.2.2⟩
      obtain ⟨-, q2⟩ := hQ e he'
      refine ⟨fun ⟨v, hv⟩ => absurd hv (abn_ne_ret habn v), fun hlt => ?_⟩
      unfold fSP fCAP at hlt
      rw [← hm] at hlt
      obtain ⟨-, -, ⟨v, hv⟩, -⟩ := q2 hlt
      exact absurd hv (abn_ne_ret habn v)

/-- `return 0` after the call. -/
theorem push_ret (hH : HooksLawful C H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {W : ValueHOL 64}
    (hp0 : ptrsOf s0 = some p0) :
    HoareG σ X (PCP C H T Γ0 s0 p0 W none) rz
      (Fin C H sgW (fun a => ProtCell C Γ0 a ∧ PWev T [1, 2, 29] [W] s0 Γ0 a) Γ0 s0 [W]
        (PushQ T)) := by
  · refine hoareG_return fun u _ hR v hv => ?_
    obtain ⟨Γ', ht, hQ⟩ := hR.2 rfl
    rw [ev_cw] at hv; cases hv
    refine fin_of_trk hH (trk_congr hH ht rfl rfl rfl rfl) hp0 (fun h => by cases h)
      (fun _ _ _ _ => retOK_nil _) fun t' h1 h2 e he => ?_
    obtain ⟨q1, q2⟩ := hQ e he
    refine ⟨fun _ => ?_, fun hlt => ?_⟩
    · unfold fSP at q1 ⊢; rw [h1]; exact q1 ⟨_, rfl⟩
    · obtain ⟨a1, a2, -, a4, a5⟩ := q2 hlt
      refine ⟨a1, by rw [← a2]; exact ptrsOf_congr h2, ⟨_, rfl⟩, ?_, ?_⟩
      · unfold fCAP at a4 ⊢; rw [h1]; exact a4
      · unfold fSTK at a5 ⊢; rw [h1]; exact a5

theorem evs_len1 {u : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)}
    (h : evs u [e] = some vs) : vs.length = 1 := by
  obtain ⟨v, vs', rfl, -, h'⟩ := evs_cons_inv h
  simp only [evs, evalListHOLExact, Option.some.injEq] at h'
  subst h'; rfl

/-- **`stack_push_word(w)`**. -/
theorem sum_stack_push_word (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hSA : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hCP : Summ σ X C H (nm "memcpy") (sgMemcpy gr)) :
    SumSpec σ X C H (nm "stack_push_word") sgW (fun _ _ _ => True) (PWev T [1, 2, 29])
      (PushQ T) := by
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 _ Γ0 hG0 _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, W, rfl, -, -⟩ := lookupCode_one code_stack_push_word hl
  obtain ⟨p0, hp0, -⟩ := id hG0
  exact hoareG_seq (push_call hC hH hM hE hK hSA hCP hs0 hG0 hp0 fun _ _ h => evs_len1 h)
    (fun r t _ hr _ h => h.1 hr) (hoareG_pre (push_ret hH hp0) fun _ _ h => h) |>
    fun h => hoareG_pre h fun _ _ h => by subst h; exact ⟨rfl, rfl, rfl⟩

/-- **`stack_push_bool(b)`**. -/
theorem sum_stack_push_bool (hC : X.code.lookup = guestCode) (hH : HooksLawful C H)
    (hM : HooksMono C H) (hE : EvCfg C T) (hK : EvHook C H T) {gr : Bool}
    (hSA : AllocSpec σ X (nm "scratch_alloc") .scratch)
    (hCP : Summ σ X C H (nm "memcpy") (sgMemcpy gr)) :
    SumSpec σ X C H (nm "stack_push_bool") sgW (fun _ _ _ => True) (PWev T [1, 2, 29])
      (PushQ T) := by
  refine sumSpec_of_hoare fun vs body callee rs hl s0 hs0 _ Γ0 hG0 _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, W, rfl, -, -⟩ := lookupCode_one code_stack_push_bool hl
  obtain ⟨p0, hp0, -⟩ := id hG0
  have hc := push_call (W := W) hC hH hM hE hK hSA hCP hs0 hG0 hp0
    (args := [.rstruct [cw 1, cw 0, cw 0, cw 0]]) fun _ _ h => evs_len1 h
  have hc' := push_call (W := W) hC hH hM hE hK hSA hCP hs0 hG0 hp0
    (args := [.rstruct [cw 0, cw 0, cw 0, cw 0]]) fun _ _ h => evs_len1 h
  refine hoareG_pre (P := fun u => u.memory = s0.memory ∧ u.globals = s0.globals ∧ u.be = s0.be)
    ?_ fun _ _ h => by subst h; exact ⟨rfl, rfl, rfl⟩
  exact hoareG_seq (hoareG_ite (hoareG_pre hc fun _ _ h => h.1) (hoareG_pre hc' fun _ _ h => h.1))
    (fun r t _ hr _ h => h.1 hr) (hoareG_pre (push_ret hH hp0) fun _ _ h => h)

end InitECandidate.Solver.MemSafe.Struct
