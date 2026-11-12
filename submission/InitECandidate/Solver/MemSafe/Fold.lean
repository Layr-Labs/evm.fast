import InitECandidate.Solver.MemSafe.Builtin
import InitECandidate.Solver.MemSafe.PChk
import InitECandidate.Solver.SourceCost.Shard

/-!
# The callee-first fold over the guest (M1)

The guest has no recursion, so the summary table is built callee-first: a candidate (name,
parameters, body, signature) is checked by `chk` against the table of the candidates before
it (and the built-ins), then added. `chkChunk C tab es` checks a chunk of candidates in
order; it runs by `decide_cbv` in the shard modules. `chkChunk_sound`: from a sound table,
an accepted chunk of valid candidates (each the guest's code entry of its name) gives a
sound table `chunkTab tab es`.

Candidates are built from `SourceCost.declPair` (`MCand.ofPair`), so a shard translates only
its own functions; validity comes from `declPair_valid` (`MCand.valid_of`).
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- A candidate table entry: name, parameters, body, signature, capabilities. -/
structure MCand where
  f : MlS
  ps : List (MlS × ShapeHOL)
  bd : ProgHOL 64
  sg : Sig
  caps : List Cap := []

/-- The candidate is the guest's code entry of its name. -/
def MCand.Valid (e : MCand) : Prop := ∃ rs, guestCode e.f = some (e.ps, e.bd, rs)

def MCand.ofPair (f : MlS) (p : ShardPair) (sg : Sig) (cs : List Cap := []) : MCand :=
  ⟨f, p.2.1, p.2.2, sg, cs⟩

theorem MCand.valid_of {f : MlS} {p : ShardPair} (hp : PairValid p) (hf : p.1 = f) (sg : Sig)
    (cs : List Cap) : (MCand.ofPair f p sg cs).Valid := by
  obtain ⟨rs, h⟩ := hp
  subst hf
  exact ⟨rs, h⟩

theorem mvalid_nil : ∀ e ∈ ([] : List MCand), e.Valid := by intro e h; cases h

theorem mvalid_cons {e : MCand} {l : List MCand} (he : e.Valid) (hl : ∀ e ∈ l, e.Valid) :
    ∀ e' ∈ e :: l, e'.Valid := by
  intro e' h
  rcases List.mem_cons.mp h with rfl | h
  · exact he
  · exact hl e' h

/-- The checking environment of a candidate. -/
def MCand.env (e : MCand) (C : Cfg) (tab : CTab) : CEnv := ⟨upg C e.caps, tab, e.sg, e.caps⟩

/-- The checker accepts the candidate against `tab`: the local-free `pchk` first (cheap on
long bodies), then `chk`. The body is checked under the configuration with the candidate's
capability globals upgraded to non-null pointers. -/
def accepts (C : Cfg) (tab : CTab) (e : MCand) : Bool :=
  e.sg.params.length == e.ps.length && capsOK C e.sg e.caps &&
    match pchk (e.env C tab) e.bd with
    | true => true
    | false => (chk (e.env C tab) (initEnv e.ps e.sg.params 0 ⟨[], []⟩) e.bd).isSome

/-- The standing hypotheses of the fold. -/
structure FoldOK (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) : Prop where
  hH : HooksLawful C H
  hC : CfgOK C
  hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0
  hX : X.code.lookup = guestCode
  hAC : AllocCfg C
  hNS : NullSafe X

theorem accepts_sound {C : Cfg} {H : Hooks σ} (hF : FoldOK σ X C H) {tab : CTab}
    (ht : CTabSound σ X C H tab) {e : MCand} (hv : e.Valid) (h : accepts C tab e = true) :
    CSumm σ X C H e.f e.sg e.caps := by
  unfold accepts at h
  simp only [Bool.and_eq_true, beq_iff_eq] at h
  obtain ⟨⟨hlen, hcs⟩, hc⟩ := h
  obtain ⟨rs, hcode⟩ := hv
  have hcode' : X.code.lookup e.f = some (e.ps, e.bd, rs) := by rw [hF.hX]; exact hcode
  have hWS := winSpecs_guest (σ := σ) hF.hX
  split at hc
  · rename_i hp
    exact summ_of_pchk hF.hH hF.hC hF.hal hF.hAC hWS hF.hNS hcs rfl ht rfl rfl hcode' hp
  · obtain ⟨o, ho⟩ := Option.isSome_iff_exists.mp hc
    exact summ_of_chk hF.hH hF.hC hF.hal hF.hAC hWS hF.hNS hcs rfl ht rfl rfl hcode' hlen ho

/-- Every candidate of the chunk is accepted against the table so far. -/
def chkChunk (C : Cfg) (tab : CTab) : List MCand → Bool
  | [] => true
  | e :: es => accepts C tab e && chkChunk C ((e.f, e.sg, e.caps) :: tab) es

/-- The table after a chunk (newest first). -/
def chunkTab (tab : CTab) (es : List MCand) : CTab :=
  es.foldl (fun t e => (e.f, e.sg, e.caps) :: t) tab

/-- **The fold.** -/
theorem chkChunk_sound {C : Cfg} {H : Hooks σ} (hF : FoldOK σ X C H) :
    ∀ (es : List MCand) (tab : CTab), chkChunk C tab es = true → (∀ e ∈ es, e.Valid) →
      CTabSound σ X C H tab → CTabSound σ X C H (chunkTab tab es)
  | [], _, _, _, ht => ht
  | e :: es, tab, h, hv, ht => by
      simp only [chkChunk, Bool.and_eq_true] at h
      exact chkChunk_sound hF es _ h.2 (fun e' he' => hv e' (List.mem_cons_of_mem _ he'))
        (ctabSound_cons ht (accepts_sound hF ht (hv e List.mem_cons_self) h.1))

/-- One shard: from the table before it (a literal) to the table after it (a literal). -/
theorem shard_step {C : Cfg} {H : Hooks σ} (hF : FoldOK σ X C H) {tab tab' : CTab}
    {es : List MCand} (hc : chkChunk C tab es = true) (hv : ∀ e ∈ es, e.Valid)
    (heq : chunkTab tab es = tab') (ht : CTabSound σ X C H tab) : CTabSound σ X C H tab' :=
  heq ▸ chkChunk_sound hF es tab hc hv ht

end InitECandidate.Solver.MemSafe
