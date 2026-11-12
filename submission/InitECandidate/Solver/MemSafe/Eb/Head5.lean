import InitECandidate.Solver.MemSafe.Eb.Head4

/-!
# `execute_block`: the head, part 5 (`txs` .. `ntx` stores): `head_chain`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

syntax "climb " tacticSeq : tactic
macro_rules
  | `(tactic| climb $t) => `(tactic| first | ($t) | (refine Or.inl ?_; climb $t))

theorem off_ne (w : BitVec 64) {a b : Nat} (hab : a ≠ b) (ha : a < 2 ^ 64) (hb : b < 2 ^ 64) :
    w + BitVec.ofNat 64 a ≠ w + BitVec.ofNat 64 b := by
  intro h
  have h1 := congrArg (fun x => x - w) h
  simp only [BitVec.add_comm w, BitVec.add_sub_cancel] at h1
  have h2 := congrArg BitVec.toNat h1
  simp only [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha, Nat.mod_eq_of_lt hb] at h2
  exact hab h2

/-- The tracked locals after the head's allocations. -/
def EnH (En : Env) (t r lg rq rl : BitVec 64) : Env :=
  ((((En.set (nm "txs") (.val (.word t))).set (nm "rcs") (.val (.word r))).set (nm "logs") (.val (.word lg))).set
    (nm "reqs") (.val (.word rq))).set (nm "rls") (.val (.word rl))

/-- What the head leaves. -/
structure HeadOut (S0 S : FS) (Z : List MlS) (w t r lg rq rl ntx0 : BitVec 64) : Prop where
  led : BoLed S0 S Z [w + BitVec.ofNat 64 80, w + BitVec.ofNat 64 72, w + BitVec.ofNat 64 56, w + BitVec.ofNat 64 40,
    w + BitVec.ofNat 64 32, w + BitVec.ofNat 64 24, w + BitVec.ofNat 64 64] w
  otxs : S (Fct.obj t tBOS (16 * ntx0.toNat + 16))
  orcs : S (Fct.obj r tBOS (16 * ntx0.toNat + 16))
  olg : S (Fct.obj lg tLSTh 0)
  orq : S (Fct.obj rq tBOS 128)
  orl : S (Fct.obj rl tLSTh 0)
  c24 : S (Fct.cellv (w + BitVec.ofNat 64 24) t)
  c32 : S (Fct.cellv (w + BitVec.ofNat 64 32) r)
  c40 : S (Fct.cellv (w + BitVec.ofNat 64 40) lg)
  c56 : S (Fct.cellv (w + BitVec.ofNat 64 56) rq)
  c64 : S (Fct.cellv (w + BitVec.ofNat 64 64) 0)
  c72 : S (Fct.cellv (w + BitVec.ofNat 64 72) rl)
  c80 : S (Fct.cellv (w + BitVec.ofNat 64 80) ntx0)
  dtr : S (Fct.prop (t ≠ r))
  dnew : ∀ b ty n, S0 (Fct.obj b ty n) → S (Fct.prop (b ≠ t)) ∧ S (Fct.prop (b ≠ r)) ∧ S (Fct.prop (b ≠ rq))
  dw : ∀ b ty n, S0 (Fct.obj b ty n) → S (Fct.prop (b ≠ w))
  wt : S (Fct.prop (w ≠ t))
  wr : S (Fct.prop (w ≠ r))
  wrq : S (Fct.prop (w ≠ rq))
  trq : S (Fct.prop (t ≠ rq))
  rrq : S (Fct.prop (r ≠ rq))

section chain
variable {E : EbE σ} {En : Env} {S0 S : FS} {Z : List MlS} {w ntx0 : BitVec 64}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem head_chain (hQ : LocIns QT)
    (h : BoLed S0 S Z [w + BitVec.ofNat 64 64] w) (hc64 : S (Fct.cellv (w + BitVec.ofNat 64 64) 0))
    (hdw : ∀ b ty n, S0 (Fct.obj b ty n) → S (Fct.prop (b ≠ w)))
    (hEn : En (nm "ntx") = some (.val (.word ntx0))) (hnt : ntx0.toNat < 2 ^ 50)
    (hz : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hsub : ∀ f, S0 f → S f)
    (hnext : ∀ t r lg rq rl : BitVec 64, ∀ S' : FS, HeadOut S0 S' Z w t r lg rq rl ntx0 → (∀ f, S f → S' f) →
      Hoare σ guestCtx (PA E (EnH En t r lg rq rl) S') ebS15 QT) :
    Hoare σ guestCtx (PA E En S) ebS4 QT := by
  unfold ebS4
  refine st_alloc_nn hQ h hEn hnt (fun t => ?_)
  have h1 := boLed_adopt h t tBOS (16 * ntx0.toNat + 16) (Or.inr (Or.inl rfl))
  unfold ebS5
  refine st_bo_seq h1 (off := 24) (x := nm "txs") (xv := t) (by decide) (by decide) (env_set_self _ _ _) ?_ ?_
  · intro a ha; simp only [List.mem_singleton] at ha; subst ha
    exact off_ne w (by decide) (by decide) (by decide)
  have h2 := boLed_add h1 (w + BitVec.ofNat 64 24) t (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine st_alloc_nn hQ h2 (by simp (config := { decide := true }) [Env.set, hEn]) hnt (fun r => ?_)
  have h3 := boLed_adopt h2 r tBOS (16 * ntx0.toNat + 16) (Or.inr (Or.inl rfl))
  unfold ebS7
  refine st_bo_seq h3 (off := 32) (x := nm "rcs") (xv := r) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h4 := boLed_add h3 (w + BitVec.ofNat 64 32) r (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine hdecLstNew (locIns_resIns hQ _) h4.tidy hz (fun lg => ?_)
  have h5 := boLed_obj h4 lg tLSTh 0 (Or.inr (Or.inr rfl))
  unfold ebS9
  refine st_bo_seq h5 (off := 40) (x := nm "logs") (xv := lg) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h6 := boLed_add h5 (w + BitVec.ofNat 64 40) lg (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine st_alloc_128 hQ h6 (fun rq => ?_)
  have h7 := boLed_adopt h6 rq tBOS 128 (Or.inr (Or.inl rfl))
  unfold ebS11
  refine st_bo_seq h7 (off := 56) (x := nm "reqs") (xv := rq) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h8 := boLed_add h7 (w + BitVec.ofNat 64 56) rq (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine hdecLstNew (locIns_resIns hQ _) h8.tidy hz (fun rl => ?_)
  have h9 := boLed_obj h8 rl tLSTh 0 (Or.inr (Or.inr rfl))
  unfold ebS13
  refine st_bo_seq h9 (off := 72) (x := nm "rls") (xv := rl) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h10 := boLed_add h9 (w + BitVec.ofNat 64 72) rl (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  unfold ebS14
  refine st_bo_seq h10 (off := 80) (x := nm "ntx") (xv := ntx0) (by decide) (by decide) (by simp (config := { decide := true }) [Env.set, hEn]) ?_ ?_
  · intro a ha; simp only [List.mem_cons, List.not_mem_nil, or_false] at ha
    rcases ha with rfl | rfl | rfl | rfl | rfl | rfl <;> exact off_ne w (by decide) (by decide) (by decide)
  have h11 := boLed_add h10 (w + BitVec.ofNat 64 80) ntx0 (Or.inl (off_ne w (by decide) (by decide) (by decide)))
  refine hnext t r lg rq rl _ ⟨h11, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ ?_
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr rfl
  · climb exact Or.inr (Or.inl rfl)
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact hc64
  · climb exact Or.inr rfl
  · climb exact Or.inr rfl
  · climb exact Or.inr (Or.inr (Or.inl ⟨t, tBOS, 16 * ntx0.toNat + 16, Or.inl (Or.inr (Or.inl rfl)), rfl⟩))
  · intro b ty n hb
    refine ⟨?_, ?_, ?_⟩
    · climb exact Or.inr (Or.inr (Or.inl ⟨b, ty, n, hsub _ hb, rfl⟩))
    · climb exact Or.inr (Or.inr (Or.inl ⟨b, ty, n, Or.inl (Or.inl (hsub _ hb)), rfl⟩))
    · climb (refine Or.inr (Or.inr (Or.inl ⟨b, ty, n, ?_, rfl⟩)); climb exact hsub _ hb)
  · intro b ty n hb
    climb exact hdw b ty n hb
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h2.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨w, tBO, 88, h6.obj, rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨t, tBOS, 16 * ntx0.toNat + 16, (by climb exact Or.inr (Or.inl rfl)), rfl⟩))
  · climb exact Or.inr (Or.inr (Or.inl ⟨r, tBOS, 16 * ntx0.toNat + 16, (by climb exact Or.inr (Or.inl rfl)), rfl⟩))
  · intro f hf
    climb exact hf

end chain

end InitECandidate.Solver.MemSafe.Eb
