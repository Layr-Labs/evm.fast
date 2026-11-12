import InitECandidate.Solver.Spec.Mpt.Leaves.Begin
import InitECandidate.Solver.Spec.Mpt.Leaves.Keccak

/-!
# The code of `_node_rlp_finish` and its callees

Readable `ProgHOL` renderings, each certified by `cbv` against the per-function AST definitions
(`Guest.Software.guestFn_*`): `keccak256`, `node_ref_len`, `node_hash_cached`, `node_write_ref`,
`rlp_encode_list_header`, `rlp_list_header_len`, `_node_rlp_finish`.

```
fun 1 _node_rlp_finish(1 fr, 1 node) {
  var k = lds node; var payload = lds (fr + 40); var cbuf = lds (fr + 24); var clen = lds (fr + 32);
  if k == 2 { var 1 rl = node_ref_len(lds (node + 48)); payload = payload + rl; }
  if k == 3 { var i = 0; while i < 16 { var 1 rl2 = node_ref_len(SLOT i); payload += rl2; i += 1; }
              var 1 vl2 = rlp_value_encoded_len(lds (node + 160), lds (node + 168)); payload += vl2; }
  var 1 hl = rlp_list_header_len(payload);
  var 1 buf = alloc(hl + payload);
  rlp_encode_list_header(buf, payload);
  var off = hl;
  if k != 3 { var 1 w = rlp_encode_bytes(buf + off, cbuf, clen); off += w;
              if k == 1 { var 1 w2 = rlp_encode_bytes(buf + off, lds (node + 48), lds (node + 56)); off += w2; }
              else { var 1 w3 = node_write_ref(lds (node + 48), buf + off); off += w3; } }
  else { var j = 0; while j < 16 { var 1 w4 = node_write_ref(SLOT j, buf + off); off += w4; j += 1; }
         var 1 w5 = rlp_encode_bytes(buf + off, lds (node + 160), lds (node + 168)); off += w5; }
  st node + 8, buf; st node + 16, off; return 0; }
```
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## `keccak256` -/

/-- `out[0..32] = stp[0..32]` (aligned `out`) or `memcpy(out, stp, 32)`. -/
def kOutIte : ProgHOL 64 :=
  .ite (.cmp .equal (.op .and [lv (nm "out"), cw 7]) (cw 0))
    (.seq (.store (lv (nm "out")) (.load .one (lv (nm "stp"))))
      (.seq (.store (.op .add [lv (nm "out"), cw 8]) (.load .one (.op .add [lv (nm "stp"), cw 8])))
        (.seq (.store (.op .add [lv (nm "out"), cw 16])
            (.load .one (.op .add [lv (nm "stp"), cw 16])))
          (.store (.op .add [lv (nm "out"), cw 24])
            (.load .one (.op .add [lv (nm "stp"), cw 24]))))))
    (callD (nm "memcpy") [lv (nm "out"), lv (nm "stp"), cw 32])

/-- The padding and the last absorption, after `var rem = n - i`. -/
def kTail : ProgHOL 64 :=
  .seq (callD (nm "memzero") [gv (nm "keccak_pad"), cw 136])
    (.seq (callD (nm "memcpy") [gv (nm "keccak_pad"), .op .add [lv (nm "p"), lv (nm "i")],
        lv (nm "rem")])
      (.seq (.storeByte (.op .add [gv (nm "keccak_pad"), lv (nm "rem")]) (cw 1))
        (.seq (.storeByte (.op .add [gv (nm "keccak_pad"), cw 135])
            (.op .or [.loadByte (.op .add [gv (nm "keccak_pad"), cw 135]), cw 128]))
          (.seq (callD (nm "keccak_absorb_block") [lv (nm "stp"), gv (nm "keccak_pad")])
            (.seq kOutIte (.return (cw 0)))))))

/-- The block loop condition `i + 136 <=+ n`. -/
def kCond : ExpHOL 64 := .cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw 136])

def kLoopBody : ProgHOL 64 :=
  .seq (callD (nm "keccak_absorb_block") [lv (nm "stp"), .op .add [lv (nm "p"), lv (nm "i")]])
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 136]))

def kBody : ProgHOL 64 :=
  .dec (nm "stp") .one (gv (nm "keccak_st"))
    (.seq (callD (nm "memzero") [lv (nm "stp"), cw 200])
      (.dec (nm "i") .one (cw 0)
        (.seq (.while kCond kLoopBody)
          (.dec (nm "rem") .one (.op .sub [lv (nm "n"), lv (nm "i")]) kTail))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_keccak256 : fnEntry Guest.Software.guestFn_keccak256 =
    (nm "keccak256", [(nm "p", .one), (nm "n", .one), (nm "out", .one)], kBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_keccak256 : guestCode (nm "keccak256") =
    some ([(nm "p", .one), (nm "n", .one), (nm "out", .one)], kBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 103) (by decide)) ⟨_, rfl⟩
    entry_keccak256

/-! ## `node_ref_len` -/

def failK : ProgHOL 64 :=
  .ite (.cmp .equal (.load .one (.op .add [lv (nm "child"), cw 8])) (cw 0))
    (callD (nm "mpt_fail") [cw 13]) .skip

def nrlBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "child")) (cw 0)) (.return (cw 1)) .skip)
    (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "child"), cw 0])) (cw 0))
        (.return (cw 33)) .skip)
      (.seq failK
        (.dec (nm "rl") .one (.load .one (.op .add [lv (nm "child"), cw 16]))
          (.seq (.ite (.cmp .lower (lv (nm "rl")) (cw 32)) (.return (lv (nm "rl"))) .skip)
            (.return (cw 33))))))

theorem entry_node_ref_len : fnEntry Guest.Software.guestFn_node_ref_len =
    (nm "node_ref_len", [(nm "child", .one)], nrlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_ref_len :
    guestCode (nm "node_ref_len") = some ([(nm "child", .one)], nrlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 287) (by decide)) ⟨_, rfl⟩
    entry_node_ref_len

/-! ## `node_hash_cached` -/

def nhcK : ProgHOL 64 :=
  .seq (callD (nm "keccak256") [.load .one (.op .add [lv (nm "node"), cw 8]),
      .load .one (.op .add [lv (nm "node"), cw 16]), lv (nm "h")])
    (.seq (.store (.op .add [lv (nm "node"), cw 24]) (lv (nm "h"))) (.return (lv (nm "h"))))

def nhcBody : ProgHOL 64 :=
  .dec (nm "cached") .one (.load .one (.op .add [lv (nm "node"), cw 24]))
    (.seq (.ite (.cmp .notEqual (lv (nm "cached")) (cw 0)) (.return (lv (nm "cached"))) .skip)
      (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "node"), cw 8])) (cw 0))
          (callD (nm "mpt_fail") [cw 13]) .skip)
        (.decCall (nm "h") .one (nm "alloc") [cw 32] nhcK)))

theorem entry_node_hash_cached : fnEntry Guest.Software.guestFn_node_hash_cached =
    (nm "node_hash_cached", [(nm "node", .one)], nhcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_hash_cached :
    guestCode (nm "node_hash_cached") = some ([(nm "node", .one)], nhcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 288) (by decide)) ⟨_, rfl⟩
    entry_node_hash_cached

/-! ## `node_write_ref` -/

/-- After `var rp = lds (child + 8); var rl = lds (child + 16)`. -/
def nwrK : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "rl")) (cw 32))
      (.seq (callD (nm "memcpy") [lv (nm "dst"), lv (nm "rp"), lv (nm "rl")]) (.return (lv (nm "rl"))))
      .skip)
    (.decCall (nm "h") .one (nm "node_hash_cached") [lv (nm "child")]
      (.seq (.storeByte (lv (nm "dst")) (cw 160))
        (.seq (callD (nm "memcpy") [.op .add [lv (nm "dst"), cw 1], lv (nm "h"), cw 32])
          (.return (cw 33)))))

/-- The hashed-child arm. -/
def nwrHashed : ProgHOL 64 :=
  .seq (.storeByte (lv (nm "dst")) (cw 160))
    (.seq (callD (nm "memcpy") [.op .add [lv (nm "dst"), cw 1],
        .load .one (.op .add [lv (nm "child"), cw 24]), cw 32])
      (.return (cw 33)))

def nwrBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "child")) (cw 0))
      (.seq (.storeByte (lv (nm "dst")) (cw 128)) (.return (cw 1))) .skip)
    (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "child"), cw 0])) (cw 0)) nwrHashed .skip)
      (.seq failK
        (.dec (nm "rp") .one (.load .one (.op .add [lv (nm "child"), cw 8]))
          (.dec (nm "rl") .one (.load .one (.op .add [lv (nm "child"), cw 16])) nwrK))))

theorem entry_node_write_ref : fnEntry Guest.Software.guestFn_node_write_ref =
    (nm "node_write_ref", [(nm "child", .one), (nm "dst", .one)], nwrBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_write_ref : guestCode (nm "node_write_ref") =
    some ([(nm "child", .one), (nm "dst", .one)], nwrBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 289) (by decide)) ⟨_, rfl⟩
    entry_node_write_ref

/-! ## The list header functions -/

def relhBody : ProgHOL 64 :=
  .call none (nm "rlp_write_header") [lv (nm "dst"), cw 192, lv (nm "payload_len")]

theorem entry_rlp_encode_list_header : fnEntry Guest.Software.guestFn_rlp_encode_list_header =
    (nm "rlp_encode_list_header", [(nm "dst", .one), (nm "payload_len", .one)], relhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_encode_list_header : guestCode (nm "rlp_encode_list_header") =
    some ([(nm "dst", .one), (nm "payload_len", .one)], relhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 124) (by decide)) ⟨_, rfl⟩
    entry_rlp_encode_list_header

def rlhlBody : ProgHOL 64 := .call none (nm "rlp_header_len") [lv (nm "payload_len")]

theorem entry_rlp_list_header_len : fnEntry Guest.Software.guestFn_rlp_list_header_len =
    (nm "rlp_list_header_len", [(nm "payload_len", .one)], rlhlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_list_header_len : guestCode (nm "rlp_list_header_len") =
    some ([(nm "payload_len", .one)], rlhlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 126) (by decide)) ⟨_, rfl⟩
    entry_rlp_list_header_len

/-! ## `_node_rlp_finish` -/

/-- The child slot `node + 32 + x * 8`, loaded. -/
def slotE (x : MlS) : ExpHOL 64 :=
  .load .one (.op .add [lv (nm "node"), cw 32, .panop .mul [lv x, cw 8]])

def ldN (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "node"), cw k])

/-- `buf + off` -/
def bufOff : ExpHOL 64 := .op .add [lv (nm "buf"), lv (nm "off")]

def finK2 : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 2))
    (.decCall (nm "rl") .one (nm "node_ref_len") [ldN 48]
      (.assign .local (nm "payload") (.op .add [lv (nm "payload"), lv (nm "rl")])))
    .skip

def finL1 : ProgHOL 64 :=
  .decCall (nm "rl2") .one (nm "node_ref_len") [slotE (nm "i")]
    (.seq (.assign .local (nm "payload") (.op .add [lv (nm "payload"), lv (nm "rl2")]))
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def finK3 : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 3))
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .less (lv (nm "i")) (cw 16)) finL1)
        (.decCall (nm "vl2") .one (nm "rlp_value_encoded_len") [ldN 160, ldN 168]
          (.assign .local (nm "payload") (.op .add [lv (nm "payload"), lv (nm "vl2")])))))
    .skip

def finNon3 : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "rlp_encode_bytes") [bufOff, lv (nm "cbuf"), lv (nm "clen")]
    (.seq (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "w")]))
      (.ite (.cmp .equal (lv (nm "k")) (cw 1))
        (.decCall (nm "w2") .one (nm "rlp_encode_bytes") [bufOff, ldN 48, ldN 56]
          (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "w2")])))
        (.decCall (nm "w3") .one (nm "node_write_ref") [ldN 48, bufOff]
          (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "w3")])))))

def finL2 : ProgHOL 64 :=
  .decCall (nm "w4") .one (nm "node_write_ref") [slotE (nm "j"), bufOff]
    (.seq (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "w4")]))
      (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1])))

def fin3 : ProgHOL 64 :=
  .dec (nm "j") .one (cw 0)
    (.seq (.while (.cmp .less (lv (nm "j")) (cw 16)) finL2)
      (.decCall (nm "w5") .one (nm "rlp_encode_bytes") [bufOff, ldN 160, ldN 168]
        (.assign .local (nm "off") (.op .add [lv (nm "off"), lv (nm "w5")]))))

def finTail : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "node"), cw 8]) (lv (nm "buf")))
    (.seq (.store (.op .add [lv (nm "node"), cw 16]) (lv (nm "off"))) (.return (cw 0)))

def finSecond : ProgHOL 64 :=
  .decCall (nm "hl") .one (nm "rlp_list_header_len") [lv (nm "payload")]
    (.decCall (nm "buf") .one (nm "alloc") [.op .add [lv (nm "hl"), lv (nm "payload")]]
      (.seq (callD (nm "rlp_encode_list_header") [lv (nm "buf"), lv (nm "payload")])
        (.dec (nm "off") .one (lv (nm "hl"))
          (.seq (.ite (.cmp .notEqual (lv (nm "k")) (cw 3)) finNon3 fin3) finTail))))

def finBody : ProgHOL 64 :=
  .dec (nm "k") .one (ldN 0)
    (.dec (nm "payload") .one (.load .one (.op .add [lv (nm "fr"), cw 40]))
      (.dec (nm "cbuf") .one (.load .one (.op .add [lv (nm "fr"), cw 24]))
        (.dec (nm "clen") .one (.load .one (.op .add [lv (nm "fr"), cw 32]))
          (.seq finK2 (.seq finK3 finSecond)))))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_node_rlp_finish : fnEntry Guest.Software.guestFn__node_rlp_finish =
    (nm "_node_rlp_finish", [(nm "fr", .one), (nm "node", .one)], finBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_rlp_finish : guestCode (nm "_node_rlp_finish") =
    some ([(nm "fr", .one), (nm "node", .one)], finBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 282) (by decide)) ⟨_, rfl⟩
    entry_node_rlp_finish

end InitECandidate.Solver.Spec.Mpt.Leaves
