import InitECandidate.Solver.MemSafe.BalEnc.Bbl6

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`: glue rules for a tail with an arbitrary post

The engine's rules (`hdecE`, `hseqR2`, ...) conclude `RR`. The tail of `build_block_access_list_rlp`
(the encoding phase, an above-writer) ends with its own post `Q`, which does not mention locals.
Here: `hdecQ`, `hdecQF`, `hdecUQ` (a `dec` with such a post), `hseqQ` (a sequence whose first
part has the engine's post and no `return`), and `NoRet`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Bal

variable {σ : Type}

/-- Programs without a `return` of their own (and without tail calls). -/
def NoRet : ProgHOL 64 → Bool
  | .skip => true
  | .assign _ _ _ => true
  | .store _ _ => true
  | .call (some (none, none)) _ _ => true
  | .call (some (some _, none)) _ _ => true
  | .seq p q => NoRet p && NoRet q
  | .ite _ p q => NoRet p && NoRet q
  | .dec _ _ _ b => NoRet b
  | .decCall _ _ _ _ k => NoRet k
  | .while _ b => NoRet b
  | _ => false

def NR (r : Option (PanSemResultExact 64)) (_ : State σ) : Prop := ∀ v, r ≠ some (.returned v)

theorem noret_sound {X : Ctx 64} : ∀ (p : ProgHOL 64), NoRet p = true →
    HoareG σ X (fun _ => True) p NR
  | .skip, _ => hoareG_skip fun _ _ _ v => by simp
  | .assign _ _ _, _ => hoareG_assignK fun _ _ _ _ _ _ v => by simp
  | .store _ _, _ => hoareG_store fun _ _ _ _ _ _ _ _ _ v => by simp
  | .call (some (none, none)) f args, _ =>
      hoareG_callD (R := fun _ _ _ _ => True) (Q := NR)
        (funSpec_true f) (fun _ _ _ _ _ _ _ _ _ _ v => by simp)
        (fun _ _ _ _ _ _ _ _ _ _ h v => by
          rcases h with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> simp)
  | .call (some (some (k, x), none)) f args, _ =>
      hoareG_callA (R := fun _ _ _ _ => True) (Q := NR)
        (funSpec_true f) (fun _ _ _ _ _ _ _ _ _ _ _ v => by simp)
        (fun _ _ _ _ _ _ _ _ _ _ h v => by
          rcases h with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> simp)
  | .seq p q, h => by
      simp only [NoRet, Bool.and_eq_true] at h
      exact hoareG_seq (noret_sound p h.1) (fun _ _ _ _ _ H => H) (hoareG_pre (noret_sound q h.2) (fun _ _ _ => trivial))
  | .ite c p q, h => by
      simp only [NoRet, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (noret_sound p h.1) (fun _ _ _ => trivial))
        (hoareG_pre (noret_sound q h.2) (fun _ _ _ => trivial))
  | .dec x sh e b, h => by
      simp only [NoRet] at h
      refine hoareG_dec fun s _ _ v _ _ => ?_
      exact hoareG_pre (hoareG_conseq (noret_sound b h) (fun _ _ H => H) (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
  | .decCall x sh f args k, h => by
      simp only [NoRet] at h
      refine hoareG_decCall (funSpec_true f) ?_ ?_
      · intro s _ _ vs _ callee v st _ _ _
        exact hoareG_pre (hoareG_conseq (noret_sound k h) (fun _ _ H => H) (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
      · intro s _ _ vs _ callee r st _ _ h'
        rcases h' with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> (intro v'; simp)
  | .while c b, h => by
      simp only [NoRet] at h
      have hb := noret_sound (X := X) b h
      refine hoareG_while (I := fun _ => True) (fun _ _ => trivial) ?_ (fun _ _ _ _ v => by simp)
      refine hoareG_conseq (P := fun _ => True) hb (fun _ _ H => trivial) ?_
      intro r t _ _ hq
      refine ⟨fun _ => trivial, fun _ => trivial, fun hr v => by simp [hr], fun r' hr h1 h2 => ?_⟩
      rw [hr] at hq ⊢
      exact hq
  | .raise _ _, h => by simp [NoRet] at h
  | .break, h => by simp [NoRet] at h
  | .continue, h => by simp [NoRet] at h
  | .tick, h => by simp [NoRet] at h
  | .annot _ _, h => by simp [NoRet] at h
  | .store32 _ _, h => by simp [NoRet] at h
  | .storeByte _ _, h => by simp [NoRet] at h
  | .primitive _ _ _, h => by simp [NoRet] at h
  | .shMemStore _ _ _, h => by simp [NoRet] at h
  | .shMemLoad _ _ _ _, h => by simp [NoRet] at h
  | .extCall _ _ _ _ _, h => by simp [NoRet] at h
  | .call none _ _, h => by simp [NoRet] at h
  | .call (some (none, some _)) _ _, h => by simp [NoRet] at h
  | .call (some (some _, some _)) _ _, h => by simp [NoRet] at h
  | .return _, h => by simp [NoRet] at h


theorem hoareG_andB {P : State σ → Prop} {c : ProgHOL 64}
    {Q1 Q2 : Option (PanSemResultExact 64) → State σ → Prop}
    (h1 : HoareG σ guestCtx P c Q1) (h2 : HoareG σ guestCtx P c Q2) :
    HoareG σ guestCtx P c (fun r t => Q1 r t ∧ Q2 r t) :=
  fun s hs hp hg => ⟨h1 s hs hp hg, h2 s hs hp hg⟩

section rules
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
  {Q : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = e; body` with a post that ignores locals; the value fact may mention the typing. -/
theorem hdecQF (hQ : ∀ r t L, Q r t → Q r { t with locals := L }) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} (G : ValueHOL 64 → Gam → Prop)
    (hfact : ∀ Γ s v, PI cs Γ0 s0 p0 (LE E F) Γ s → ev s e = some v → G v Γ)
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    (hbody : ∀ v, HoareG σ guestCtx (PE cs Γ0 s0 p0 (E.set n v) (fun Γ => F Γ ∧ G v Γ)) body Q) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) Q := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite n v s) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => hQ r t _ hq)
  refine hoareG_pre (hbody v) (fun t _ ht => ?_)
  subst ht
  exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, le_set ⟨hLL, hFF⟩ n v,
    hFF, hfact Γ s v ⟨hIV, hLL, hFF⟩ hv⟩

/-- `var n = e; body` with an untracked value. -/
theorem hdecUQ (hQ : ∀ r t L, Q r t → Q r { t with locals := L }) {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {E : Env} {F : Gam → Prop} (hn : E n = none)
    (hH : HooksLawful guestC (guestHooksR (σ := σ)))
    (hbody : HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) body Q) :
    HoareG σ guestCtx (PE cs Γ0 s0 p0 E F) (.dec n sh e body) Q := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  obtain ⟨Γ, hIV, hLL, hFF⟩ := hp
  refine hoareG_conseq (P := fun t => t = setVarHOLFinite n v s) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => hQ r t _ hq)
  refine hoareG_pre hbody (fun t _ ht => ?_)
  subst ht
  refine ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, fun y w hy => ?_, hFF⟩
  have hne : n ≠ y := fun e => by rw [← e, hn] at hy; cases hy
  exact (lk_set_ne _ _ hne).trans (hLL y w hy)

/-- `a; b` where `a` ends with the engine's post and cannot `return`. -/
theorem hseqQ {P L : Gam → State σ → Prop} {a b : ProgHOL 64}
    (ha : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a (RR cs Γ0 s0 p0 L))
    (hnr : HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) a NR)
    (hQnr : ∀ r t, NR r t → Q r t)
    (hb : HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) b Q) :
    HoareG σ guestCtx (fun s => ∃ Γ, P Γ s) (.seq a b) Q :=
  hoareG_seq (R := fun r t => RR cs Γ0 s0 p0 L r t ∧ NR r t) (hoareG_andB ha hnr)
    (fun r t _ hr _ h => hQnr r t h.2)
    (hoareG_pre hb (fun t _ h => by
      rcases h.1 with ⟨-, h⟩ | ⟨hr, -⟩
      · exact h
      · exact absurd rfl hr))

end rules

end InitECandidate.Solver.MemSafe.BalEnc
