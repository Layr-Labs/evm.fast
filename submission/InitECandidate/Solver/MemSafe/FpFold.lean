import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.FpKeep

/-!
# The "keeps `frame_mem_ptr`" table, callee-first (interface rev. 5)

The same fold as the summaries: a chunk of valid candidates is checked by `fpChk` against the
names before it. `fpChunk_sound`: a checked chunk extends a sound `KeepsFp` table.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def fpChunk (tab : List MlS) : List MCand → Bool
  | [] => true
  | e :: es => fpChk tab e.bd && fpChunk (e.f :: tab) es

def fpChunkTab (tab : List MlS) (es : List MCand) : List MlS :=
  es.foldl (fun t e => e.f :: t) tab

theorem fpChunk_sound (hX : X.code.lookup = guestCode) :
    ∀ (es : List MCand) (tab : List MlS), fpChunk tab es = true → (∀ e ∈ es, e.Valid) →
      FpTabSound σ X tab → FpTabSound σ X (fpChunkTab tab es)
  | [], _, _, _, ht => ht
  | e :: es, tab, h, hv, ht => by
      simp only [fpChunk, Bool.and_eq_true] at h
      obtain ⟨rs, hc⟩ := hv e List.mem_cons_self
      have hk : KeepsFp σ X e.f := keepsFp_of_chk ht (by rw [hX]; exact hc) h.1
      exact fpChunk_sound hX es _ h.2 (fun e' he' => hv e' (List.mem_cons_of_mem _ he'))
        (fpTabSound_cons ht hk)

theorem fp_shard_step (hX : X.code.lookup = guestCode) {tab tab' : List MlS} {es : List MCand}
    (hc : fpChunk tab es = true) (hv : ∀ e ∈ es, e.Valid) (heq : fpChunkTab tab es = tab')
    (ht : FpTabSound σ X tab) : FpTabSound σ X tab' :=
  heq ▸ fpChunk_sound hX es tab hc hv ht

end InitECandidate.Solver.MemSafe
