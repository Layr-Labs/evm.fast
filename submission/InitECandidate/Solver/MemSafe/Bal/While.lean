import InitECandidate.Solver.MemSafe.Bal.ItemSpec

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- Programs that never end in `break` / `continue` (their own, i.e. outside inner loops). -/
def NoBC : ProgHOL 64 → Bool
  | .skip => true
  | .return _ => true
  | .assign _ _ _ => true
  | .store _ _ => true
  | .call (some (none, none)) _ _ => true
  | .call (some (some _, none)) _ _ => true
  | .seq p q => NoBC p && NoBC q
  | .ite _ p q => NoBC p && NoBC q
  | .dec _ _ _ b => NoBC b
  | .decCall _ _ _ _ k => NoBC k
  | .while _ _ => true
  | _ => false

theorem nobc_sound {X : Ctx 64} : ∀ (p : ProgHOL 64), NoBC p = true →
    HoareG σ X (fun _ => True) p (fun r _ => r ≠ some .break ∧ r ≠ some .continue)
  | .skip, _ => hoareG_skip fun _ _ _ => ⟨by simp, by simp⟩
  | .return _, _ => hoareG_return fun _ _ _ _ _ => ⟨by simp, by simp⟩
  | .assign _ _ _, _ => hoareG_assignK fun _ _ _ _ _ _ => ⟨by simp, by simp⟩
  | .store _ _, _ => hoareG_store fun _ _ _ _ _ _ _ _ _ => ⟨by simp, by simp⟩
  | .call (some (none, none)) f args, _ =>
      hoareG_callD (R := fun _ _ _ _ => True) (Q := fun r _ => r ≠ some .break ∧ r ≠ some .continue)
        (funSpec_true f) (fun _ _ _ _ _ _ _ _ _ _ => ⟨by simp, by simp⟩)
        (fun _ _ _ _ _ _ _ _ _ _ h => by
          rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩)
  | .call (some (some (k, x), none)) f args, _ =>
      hoareG_callA (R := fun _ _ _ _ => True) (Q := fun r _ => r ≠ some .break ∧ r ≠ some .continue)
        (funSpec_true f) (fun _ _ _ _ _ _ _ _ _ _ _ => ⟨by simp, by simp⟩)
        (fun _ _ _ _ _ _ _ _ _ _ h => by
          rcases h with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩)
  | .seq p q, h => by
      simp only [NoBC, Bool.and_eq_true] at h
      exact hoareG_seq (nobc_sound p h.1) (fun _ _ _ _ _ H => H) (hoareG_pre (nobc_sound q h.2) (fun _ _ _ => trivial))
  | .ite c p q, h => by
      simp only [NoBC, Bool.and_eq_true] at h
      exact hoareG_ite (hoareG_pre (nobc_sound p h.1) (fun _ _ _ => trivial))
        (hoareG_pre (nobc_sound q h.2) (fun _ _ _ => trivial))
  | .dec x sh e b, h => by
      simp only [NoBC] at h
      refine hoareG_dec fun s _ _ v _ _ => ?_
      exact hoareG_pre (hoareG_conseq (nobc_sound b h) (fun _ _ H => H) (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
  | .decCall x sh f args k, h => by
      simp only [NoBC] at h
      refine hoareG_decCall (funSpec_true f) ?_ ?_
      · intro s _ _ vs _ callee v st _ _ _
        exact hoareG_pre (hoareG_conseq (nobc_sound k h) (fun _ _ H => H) (fun _ _ _ _ H => H)) (fun _ _ _ => trivial)
      · intro s _ _ vs _ callee r st _ _ h'
        rcases h' with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨by simp, by simp⟩
  | .while c b, _ => by
      refine hoareG_while (I := fun _ => True) (fun _ _ => trivial) ?_ (fun _ _ _ _ => ⟨by simp, by simp⟩)
      intro s hs hp hg
      refine ⟨fun _ => trivial, fun _ => trivial, fun _ => ⟨by simp, by simp⟩, fun r' hr h1 h2 => ?_⟩
      rw [hr]
      exact ⟨fun h => h2 (Option.some.inj h), fun h => h1 (Option.some.inj h)⟩
  | .raise _ _, h => by simp [NoBC] at h
  | .break, h => by simp [NoBC] at h
  | .continue, h => by simp [NoBC] at h
  | .tick, h => by simp [NoBC] at h
  | .annot _ _, h => by simp [NoBC] at h
  | .store32 _ _, h => by simp [NoBC] at h
  | .storeByte _ _, h => by simp [NoBC] at h
  | .primitive _ _ _, h => by simp [NoBC] at h
  | .shMemStore _ _ _, h => by simp [NoBC] at h
  | .shMemLoad _ _ _ _, h => by simp [NoBC] at h
  | .extCall _ _ _ _ _, h => by simp [NoBC] at h
  | .call none _ _, h => by simp [NoBC] at h
  | .call (some (none, some _)) _ _, h => by simp [NoBC] at h
  | .call (some (some _, some _)) _ _, h => by simp [NoBC] at h


section gw
variable {cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- **A `while` loop whose body keeps the invariant `∃ Γ, PI L`.** -/
theorem gwhile {L : Gam → State σ → Prop} {c : ExpHOL 64} {body : ProgHOL 64} (hnbc : NoBC body = true)
    (hLclk : ∀ Γ s, L Γ s → L Γ (decClockHOLFinite s))
    (hb : HoareG σ guestCtx (fun s => (∃ Γ, PI cs Γ0 s0 p0 L Γ s) ∧ CondTrue s c) body (RR cs Γ0 s0 p0 L)) :
    HoareG σ guestCtx (fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) (.while c body) (RR cs Γ0 s0 p0 L) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  have hnb := nobc_sound (σ := σ) (X := guestCtx) body hnbc
  refine hoareG_while (I := fun s => ∃ Γ, PI cs Γ0 s0 p0 L Γ s) ?_ ?_ ?_
  · rintro s ⟨Γ, hIV, hL⟩
    exact ⟨Γ, ⟨Struct.trk_congr hH hIV.1 rfl rfl rfl rfl, hIV.2⟩, hLclk Γ s hL⟩
  · intro s hs hp hg
    have h1 := hb s hs hp hg
    have h2 := (hnb s hs trivial hg)
    refine ⟨fun hr => ?_, fun hr => ?_, fun hr => ?_, fun r' hr h1' h2' => ?_⟩
    · rw [hr] at h1
      rcases h1 with ⟨-, hI⟩ | ⟨h, -⟩
      · exact hI
      · exact absurd rfl h
    · rw [hr] at h2; exact absurd rfl h2.2
    · rw [hr] at h2; exact absurd rfl h2.1
    · rw [hr] at h1 ⊢
      rcases h1 with ⟨h, -⟩ | ⟨-, h⟩
      · cases h
      · exact Or.inr ⟨by simp, h⟩
  · intro s hs hI hc
    exact Or.inl ⟨rfl, hI⟩

end gw

end InitECandidate.Solver.MemSafe.Bal
