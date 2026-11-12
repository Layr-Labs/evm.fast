import InitECandidate.Solver.MemSafe.Shards.BaseCaps
import Guest.SoftwareAst

set_option autoImplicit false

/-!
# `blake2_g` with constant lane indices (checker instances)

`blake2_g(a, b, c, d, x, y)` stores at `b2_v + 8 a`, …, `b2_v + 8 d`. With `.any` lane indices
this is not memory safe; every caller (`blake2b_f`) passes constants `a, b, c, d < 16`, and the
checker accepts the eight instance signatures `[.eq a, .eq b, .eq c, .eq d, .any, .any]` (the
stores hit the 128-byte `scalar` blob `b2_v` at constant offsets).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open Flapjack.Pancake.PanLang (MlS ProgHOL)

/-- The lane quadruples of `blake2b_f`. -/
def b2Inst : List (Nat × Nat × Nat × Nat) :=
  [(0, 4, 8, 12), (1, 5, 9, 13), (2, 6, 10, 14), (3, 7, 11, 15),
   (0, 5, 10, 15), (1, 6, 11, 12), (2, 7, 8, 13), (3, 4, 9, 14)]

def b2Sig (q : Nat × Nat × Nat × Nat) (g : Bool) : Sig :=
  ⟨[.eq q.1, .eq q.2.1, .eq q.2.2.1, .eq q.2.2.2, .any, .any], [], [], g⟩

def b2Chunk : List MCand :=
  b2Inst.map fun q => MCand.ofPair (nm "blake2_g") (declPair Guest.Software.guestFn_blake2_g)
    (b2Sig q false) []

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem b2Chunk_ok : chkChunk Types.guestC [] b2Chunk = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem b2Chunk_valid : ∀ e ∈ b2Chunk, e.Valid := by
  intro e he
  obtain ⟨q, -, rfl⟩ := List.mem_map.mp he
  exact MCand.valid_of (declPair_valid (List.getElem_mem (n := 622) (by decide)) ⟨_, rfl⟩) rfl _ _

theorem mem_chunkTab_self : ∀ (es : List MCand) (tab : CTab) (e : MCand), e ∈ es →
    (e.f, e.sg, e.caps) ∈ chunkTab tab es := by
  intro es
  induction es with
  | nil => intro _ _ h; cases h
  | cons e' es ih =>
      intro tab e h
      unfold chunkTab
      rw [List.foldl_cons]
      rcases List.mem_cons.mp h with rfl | h
      · have mono : ∀ (l : List MCand) (t : CTab) x, x ∈ t → x ∈ chunkTab t l := by
          intro l
          induction l with
          | nil => intro t x hx; exact hx
          | cons a l ih2 => intro t x hx; exact ih2 _ x (List.mem_cons_of_mem _ hx)
        exact mono es _ _ List.mem_cons_self
      · exact ih _ e h

/-- A non-growing summary is also a growing one. -/
theorem csumm_grow {σ : Type} {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {ps : List PT}
    {rt : List RT} {gw : List MlS} {cs : List Cap} (h : CSumm σ X C H f ⟨ps, rt, gw, false⟩ cs) :
    CSumm σ X C H f ⟨ps, rt, gw, true⟩ cs := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hreq
  obtain ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, h6, h7, h8, -, h10⟩, hq⟩ :=
    h vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hreq
  exact ⟨Γ', p, p', ⟨h1, h2, h3, h4, h5, h6, h7, h8, fun h => absurd h (by simp), h10⟩, hq⟩

/-- **`blake2_g`**, the lane instances. -/
theorem csumm_blake2_g {σ : Type} {X : Ctx 64} {H : Hooks σ} (hF : FoldOK σ X guestC H)
    {q : Nat × Nat × Nat × Nat} (hq : q ∈ b2Inst) (g : Bool) :
    CSumm σ X guestC H (nm "blake2_g") (b2Sig q g) [] := by
  have hsk := chkChunk_sound hF b2Chunk [] b2Chunk_ok b2Chunk_valid ctabSound_nil
  have h0 : CSumm σ X guestC H (nm "blake2_g") (b2Sig q false) [] :=
    hsk _ _ _ (mem_chunkTab_self b2Chunk [] _ (List.mem_map.mpr ⟨q, hq, rfl⟩))
  cases g
  · exact h0
  · exact csumm_grow h0

end InitECandidate.Solver.MemSafe.WaveHelpers
