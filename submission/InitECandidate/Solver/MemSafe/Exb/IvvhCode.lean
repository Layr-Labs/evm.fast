import InitECandidate.Solver.MemSafe.Trie.BmiFinal

/-!
# `is_valid_versioned_hashes`: the code
```
fun 1 is_valid_versioned_hashes(1 si) {
  var pl = lds 1 (si + SI_PL); var txs = lds 1 (pl + PL_TXS); var ntx = lds 1 (pl + PL_TXS_N);
  var vh = lds 1 (si + SI_VH); var nvh = lds 1 (si + SI_VH_N); var k = 0; var i = 0;
  while i < ntx {
    var 1 tx = decode_transaction(SLICE_PTR(txs, i), SLICE_LEN(txs, i));
    var 1 isb = tx_is_blob(tx);
    if isb != 0 {
      var nb = lds 1 (tx + TX_BLOB_HASHES_N); var j = 0;
      while j < nb {
        if k >=+ nvh { return 0; }
        var 1 eq = memeq((lds 1 (tx + TX_BLOB_HASHES)) + j * 32, vh + k * 32, 32);
        if eq == 0 { return 0; }
        k = k + 1; j = j + 1;
      }
    }
    i = i + 1;
  }
  if k != nvh { return 0; }
  return 1;
}
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

def ivEl : ExpHOL 64 := .op .add [lv (nm "txs"), .panop .mul [lv (nm "i"), cw 16]]
def ivEl8 : ExpHOL 64 := .op .add [lv (nm "txs"), .panop .mul [lv (nm "i"), cw 16], cw 8]

def ivInner : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (lv (nm "k")) (lv (nm "nvh"))) (.return (cw 0)) .skip)
    (.decCall (nm "eq") .one (nm "memeq")
      [.op .add [.load .one (.op .add [lv (nm "tx"), cw 256]), .panop .mul [lv (nm "j"), cw 32]],
        .op .add [lv (nm "vh"), .panop .mul [lv (nm "k"), cw 32]], cw 32]
      (.seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (cw 0)) .skip)
        (.seq (.assign .local (nm "k") (.op .add [lv (nm "k"), cw 1]))
          (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1])))))

def ivBlob : ProgHOL 64 :=
  .dec (nm "nb") .one (.load .one (.op .add [lv (nm "tx"), cw 264]))
    (.dec (nm "j") .one (cw 0) (.while (.cmp .less (lv (nm "j")) (lv (nm "nb"))) ivInner))

def ivOuter : ProgHOL 64 :=
  .decCall (nm "tx") .one (nm "decode_transaction") [.load .one ivEl, .load .one ivEl8]
    (.decCall (nm "isb") .one (nm "tx_is_blob") [lv (nm "tx")]
      (.seq (.ite (.cmp .notEqual (lv (nm "isb")) (cw 0)) ivBlob .skip)
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

def ivLoop : ProgHOL 64 := .while (.cmp .less (lv (nm "i")) (lv (nm "ntx"))) ivOuter

def ivTail : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (lv (nm "k")) (lv (nm "nvh"))) (.return (cw 0)) .skip) (.return (cw 1))

def ivBody : ProgHOL 64 :=
  .dec (nm "pl") .one (.load .one (.op .add [lv (nm "si"), cw 0]))
    (.dec (nm "txs") .one (.load .one (.op .add [lv (nm "pl"), cw 32]))
      (.dec (nm "ntx") .one (.load .one (.op .add [lv (nm "pl"), cw 40]))
        (.dec (nm "vh") .one (.load .one (.op .add [lv (nm "si"), cw 8]))
          (.dec (nm "nvh") .one (.load .one (.op .add [lv (nm "si"), cw 16]))
            (.dec (nm "k") .one (cw 0)
              (.dec (nm "i") .one (cw 0) (.seq ivLoop ivTail)))))))

def ivParams : List (MlS × ShapeHOL) := [(nm "si", .one)]

theorem entry_ivvh : fnEntry Guest.Software.guestFn_is_valid_versioned_hashes =
    (nm "is_valid_versioned_hashes", ivParams, ivBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ivvh : guestCode (nm "is_valid_versioned_hashes") = some (ivParams, ivBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 868) (by decide)) ⟨_, rfl⟩ entry_ivvh

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.code_ivvh
