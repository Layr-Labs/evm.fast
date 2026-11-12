import InitECandidate.Solver.MemSafe.Rec.DecPayCode

set_option autoImplicit false

/-!
# `decode_stateless_input`: the code

Generated from the guest AST (`guestAst[207]`), cut into the stages of the proof:
`dsBody` (checks, offsets, `alloc`), `dsA` (offsets of the inner container), `dsB` (the three
calls and stores), `dsC` (the witness offsets loop), `dsD` (the three byte lists, `return si`).
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def dsLoopBody : ProgHOL 64 :=
  .seq (.store (.op .add [gv (nm "ssz_offs"), .panop .mul [lv (nm "i"), cw 8]]) (le32 (.op .add [lv (nm "wp"), .panop .mul [lv (nm "i"), cw 4]]) (.op .add [lv (nm "wp"), .panop .mul [lv (nm "i"), cw 4], cw 1]) (.op .add [lv (nm "wp"), .panop .mul [lv (nm "i"), cw 4], cw 2]) (.op .add [lv (nm "wp"), .panop .mul [lv (nm "i"), cw 4], cw 3]))) (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def dsD : ProgHOL 64 :=
  .dec (nm "w0") .one (.load .one (gv (nm "ssz_offs")))
  (.dec (nm "w1") .one (.load .one (.op .add [gv (nm "ssz_offs"), cw 8]))
  (.dec (nm "w2") .one (.load .one (.op .add [gv (nm "ssz_offs"), cw 16]))
  (.decCall (nm "st0") (.comb [.one, .one]) (nm "decode_bytes_list") [.op .add [lv (nm "wp"), lv (nm "w0")], .op .sub [lv (nm "w1"), lv (nm "w0")], cw 9223372036854775807, cw 1024]
  (.seq (.store (.op .add [lv (nm "si"), cw 40]) (.rfield 0 (lv (nm "st0"))))
  (.seq (.store (.op .add [lv (nm "si"), cw 48]) (.rfield 1 (lv (nm "st0"))))
  (.decCall (nm "cd") (.comb [.one, .one]) (nm "decode_bytes_list") [.op .add [lv (nm "wp"), lv (nm "w1")], .op .sub [lv (nm "w2"), lv (nm "w1")], cw 9223372036854775807, cw 65536]
  (.seq (.store (.op .add [lv (nm "si"), cw 56]) (.rfield 0 (lv (nm "cd"))))
  (.seq (.store (.op .add [lv (nm "si"), cw 64]) (.rfield 1 (lv (nm "cd"))))
  (.decCall (nm "hd") (.comb [.one, .one]) (nm "decode_bytes_list") [.op .add [lv (nm "wp"), lv (nm "w2")], .op .sub [lv (nm "wlen"), lv (nm "w2")], cw 256, cw 1024]
  (.seq (.store (.op .add [lv (nm "si"), cw 72]) (.rfield 0 (lv (nm "hd"))))
  (.seq (.store (.op .add [lv (nm "si"), cw 80]) (.rfield 1 (lv (nm "hd"))))
  (.return (lv (nm "si"))))))))))))))

def dsC : ProgHOL 64 :=
  .dec (nm "wp") .one (.op .add [lv (nm "p"), lv (nm "o_wit")])
  (.dec (nm "wlen") .one (.op .sub [lv (nm "len"), lv (nm "o_wit")])
  (.seq (sFail (.cmp .lower (lv (nm "wlen")) (cw 12)) 82)
  (.dec (nm "i") .one (cw 0)
  (.seq (.while (.cmp .less (lv (nm "i")) (cw 3)) dsLoopBody)
  (.seq (callD (nm "ssz_check_offsets") [gv (nm "ssz_offs"), cw 3, cw 12, lv (nm "wlen")])
  (dsD))))))

def dsB : ProgHOL 64 :=
  .decCall (nm "pl") .one (nm "decode_payload") [.op .add [lv (nm "np"), lv (nm "o_pl")], .op .sub [lv (nm "o_vh"), lv (nm "o_pl")]]
  (.seq (.store (.op .add [lv (nm "si"), cw 0]) (lv (nm "pl")))
  (.decCall (nm "nvh") .one (nm "ssz_fixed_list_count") [.op .sub [lv (nm "o_rq"), lv (nm "o_vh")], cw 32, cw 9223372036854775807]
  (.seq (.store (.op .add [lv (nm "si"), cw 8]) (.op .add [lv (nm "np"), lv (nm "o_vh")]))
  (.seq (.store (.op .add [lv (nm "si"), cw 16]) (lv (nm "nvh")))
  (.seq (.store (.op .add [lv (nm "si"), cw 24]) (.op .add [lv (nm "np"), cw 8]))
  (.decCall (nm "rq") .one (nm "decode_requests") [.op .add [lv (nm "np"), lv (nm "o_rq")], .op .sub [lv (nm "nlen"), lv (nm "o_rq")]]
  (.seq (.store (.op .add [lv (nm "si"), cw 32]) (lv (nm "rq")))
  (dsC))))))))

def dsA : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "si"), cw 88]) (.op .or [.loadByte (.op .add [lv (nm "p"), cw 8]), .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw 8, cw 1])) (cw 8), .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw 8, cw 2])) (cw 16), .shift .lsl (.loadByte (.op .add [lv (nm "p"), cw 8, cw 3])) (cw 24), .shift .lsl (le32 (.op .add [lv (nm "p"), cw 8, cw 4]) (.op .add [lv (nm "p"), cw 8, cw 4, cw 1]) (.op .add [lv (nm "p"), cw 8, cw 4, cw 2]) (.op .add [lv (nm "p"), cw 8, cw 4, cw 3])) (cw 32)]))
  (.dec (nm "np") .one (.op .add [lv (nm "p"), lv (nm "o_npr")])
  (.dec (nm "nlen") .one (.op .sub [lv (nm "o_wit"), lv (nm "o_npr")])
  (.seq (sFail (.cmp .lower (lv (nm "nlen")) (cw 44)) 81)
  (.dec (nm "o_pl") .one (le32 (lv (nm "np")) (.op .add [lv (nm "np"), cw 1]) (.op .add [lv (nm "np"), cw 2]) (.op .add [lv (nm "np"), cw 3]))
  (.dec (nm "o_vh") .one (le32 (.op .add [lv (nm "np"), cw 4]) (.op .add [lv (nm "np"), cw 4, cw 1]) (.op .add [lv (nm "np"), cw 4, cw 2]) (.op .add [lv (nm "np"), cw 4, cw 3]))
  (.dec (nm "o_rq") .one (le32 (.op .add [lv (nm "np"), cw 40]) (.op .add [lv (nm "np"), cw 40, cw 1]) (.op .add [lv (nm "np"), cw 40, cw 2]) (.op .add [lv (nm "np"), cw 40, cw 3]))
  (.seq (.store (gv (nm "ssz_offs")) (lv (nm "o_pl")))
  (.seq (.store (.op .add [gv (nm "ssz_offs"), cw 8]) (lv (nm "o_vh")))
  (.seq (.store (.op .add [gv (nm "ssz_offs"), cw 16]) (lv (nm "o_rq")))
  (.seq (callD (nm "ssz_check_offsets") [gv (nm "ssz_offs"), cw 3, cw 44, lv (nm "nlen")])
  (dsB)))))))))))

def dsBody : ProgHOL 64 :=
  .seq (sFail (.cmp .lower (lv (nm "len")) (cw 2)) 1)
  (.seq (sFail (.cmp .notEqual (cw 0) (.op .or [.cmp .notEqual (.loadByte (lv (nm "p"))) (cw 21), .cmp .notEqual (.loadByte (.op .add [lv (nm "p"), cw 1])) (cw 1)])) 2)
  (.seq (.assign .local (nm "p") (.op .add [lv (nm "p"), cw 2]))
  (.seq (.assign .local (nm "len") (.op .sub [lv (nm "len"), cw 2]))
  (.seq (sFail (.cmp .lower (lv (nm "len")) (cw 16)) 80)
  (.seq (.store (gv (nm "ssz_offs")) (le32 (lv (nm "p")) (.op .add [lv (nm "p"), cw 1]) (.op .add [lv (nm "p"), cw 2]) (.op .add [lv (nm "p"), cw 3])))
  (.seq (.store (.op .add [gv (nm "ssz_offs"), cw 8]) (le32 (.op .add [lv (nm "p"), cw 4]) (.op .add [lv (nm "p"), cw 4, cw 1]) (.op .add [lv (nm "p"), cw 4, cw 2]) (.op .add [lv (nm "p"), cw 4, cw 3])))
  (.seq (callD (nm "ssz_check_offsets") [gv (nm "ssz_offs"), cw 2, cw 16, lv (nm "len")])
  (.dec (nm "o_npr") .one (.load .one (gv (nm "ssz_offs")))
  (.dec (nm "o_wit") .one (.load .one (.op .add [gv (nm "ssz_offs"), cw 8]))
  (.decCall (nm "si") .one (nm "alloc") [cw 96]
  (dsA)))))))))))

def dsPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "len", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_decode_stateless_input : fnEntry Guest.Software.guestFn_decode_stateless_input =
    (nm "decode_stateless_input", dsPs, dsBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_decode_stateless_input :
    guestCode (nm "decode_stateless_input") = some (dsPs, dsBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 207) (by decide)) ⟨_, rfl⟩
    entry_decode_stateless_input

end InitECandidate.Solver.MemSafe.Rec
