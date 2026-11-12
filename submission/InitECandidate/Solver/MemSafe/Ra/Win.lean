import InitECandidate.Solver.MemSafe.Ra.Args

set_option autoImplicit false

/-!
# The heap window invariant and the function-level wrapper (sonnet-ra)

* `Win a Mk Γ q`: a heap window opened at `Mk` is open and sound to release (`winOK_win`).
* `sumSpecA_of_gp2`: `Dn.sumSpecA_of_gp` without `ScrOld`, with the final allocator state in the post.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

set_option hygiene false in
/-- A name is not bound in a list. -/
macro "ra_fresh " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (dsimp only; decide)))

set_option hygiene false in
/-- Every pair of a list is a member of a longer list, or is a new binding. -/
macro "ra_sub " "[" ids:Lean.Parser.Tactic.simpLemma,* "]" : tactic =>
  `(tactic| (intro p hp; simp only [$ids,*, List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp [$ids,*]))

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins

variable {σ : Type} {X : Ctx 64}

theorem bufOK_le {C : Cfg} {Γ : Gam} {q : Ptrs} {b n m : Nat} (h : BufOK C Γ q b n) (hm : m ≤ n) :
    BufOK C Γ q b m := fun x hx => h x ⟨hx.1, hx.2.1, by have := hx.2.2; omega⟩

/-- Locals: a list of words and the wide argument `v`. -/
def LKVV (kv : List (MlS × BitVec 64)) (V : ValueHOL 64) (m : LocalsH) : Prop :=
  LKV kv m ∧ m.lookup (nm "v") = some V

theorem lkvv_new {kv : List (MlS × BitVec 64)} {V : ValueHOL 64} {s : State σ}
    (h : LKVV kv V s.locals) {x : MlS} (hx : ∀ p ∈ kv, p.1 ≠ x) (hxv : nm "v" ≠ x) (w : BitVec 64) :
    LKVV ((x, w) :: kv) V (setVarHOLFinite x (.val (.word w)) s).locals :=
  ⟨lkv_new h.1 hx w, lk_keep hxv h.2⟩

def Win (a : Act σ) (Mk : BitVec 64) (Γ : Gam) (q : Ptrs) : Prop :=
  Mk.toNat % 8 = 0 ∧ a.p0.hp ≤ Mk.toNat ∧ Mk.toNat ≤ q.hp ∧ HI Mk.toNat Γ

theorem hi_of_heap {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) : HI q.hp Γ := by
  intro o ho hr
  have h := ((layout_heap haC hh).1 o ho).2.2.2.2
  rw [hr] at h
  simp only [Region.Live] at h
  unfold Obj.hi
  unfold Obj.lo at h
  omega

theorem win_mark {a : Act σ} (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs} {s : State σ}
    (hh : Heap a Γ q s) {Mk : BitVec 64} (h : Mk.toNat = q.hp) : Win a Mk Γ q := by
  have hord := heap_ord hh
  have hmo : a.p0.Mono q := hh.2.2.1
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [h]; exact hord.2.2.2.2.2.1
  · rw [h]; exact hmo.1
  · rw [h]
  · rw [h]; exact hi_of_heap haC hh

theorem win_cof {a : Act σ} (haC : a.C = Types.guestC) {sg' : Sig} {vs : List (ValueHOL 64)}
    {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {r : PanSemResultExact 64}
    (co : COF a sg' vs Γ Γ' q q' s st r) (hg : sg'.grows = false) {Mk : BitVec 64}
    (h : Win a Mk Γ q) : Win a Mk Γ' q' :=
  ⟨h.1, h.2.1, le_trans h.2.2.1 co.mono.1, hi_cof haC co hg h.2.2.2⟩

theorem winOK_win {a : Act σ} (ha : ActOK a X) (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs}
    {s : State σ} (hh : Heap a Γ q s) {Mk : BitVec 64} (h : Win a Mk Γ q) :
    WinOK a Γ q .heap Mk :=
  winOK_heap ha haC hh h.1 h.2.1 h.2.2.1 h.2.2.2

/-- A function summary from a `GP`-style body proof. -/
theorem sumSpecA_of_gp2 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    {sg : Sig} {f : MlS} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Rx : List (ValueHOL 64) → Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee → ∀ (Γ0 : Gam) (p0 : Ptrs),
        Pre vs s0 Γ0 →
        ActOK (actOf C H sg [] vs s0 Γ0 p0) X → Heap (actOf C H sg [] vs s0 Γ0 p0) Γ0 p0 s0 →
        HoareG σ X (fun t => t = s0) body (fun r t => ∀ r', r = some r' → ¬ Abortive r' →
          ∃ Γ' p', Ext Γ0 Γ' ∧ Heap (actOf C H sg [] vs s0 Γ0 p0) Γ' p' t ∧
            ∀ v, r' = .returned v → RetOK Γ' p0 p' vs sg.ret v ∧ Rx vs Γ' p' t.memory v)) :
    SumSpecA σ X C H f sg Pre (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ∀ v, r = .returned v → ∃ p', ptrsOf t = some p' ∧
        Rx vs Γ' p' t.memory v) := by
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hargs hpre
  obtain ⟨p1, hps, hargs⟩ := hargs
  obtain ⟨ha, hh⟩ := act_entry hH hC hal hAC hNS (WaveHelpers.capsOK_nil C sg) hG hps hargs
    (fun c hc => by cases hc)
  have HH := h vs body callee rs hl s hs hloc Γ p1 hpre ha hh s hs rfl (by rw [hr]; exact hgood)
  rw [hr] at HH
  obtain ⟨Γ', p', hext, hh', hret⟩ := HH r rfl hna
  refine ⟨Γ', p1, p', sumCore_pw_mono2 (act_exit (WaveHelpers.capsOK_nil C sg) hps hext hh'
    (fun v hv => (hret v hv).1)) ?_, fun v hv => ⟨p', hh'.2.1, (hret v hv).2⟩⟩
  rintro x ⟨hx, c, hc, -⟩
  cases hc

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.sumSpecA_of_gp2
#print axioms InitECandidate.Solver.MemSafe.Ra.winOK_win
