import InitECandidate.Solver.MemSafe.Trie.BmiFinal

/-!
# `payload_header`: the code (`Guest/src/fork.pnk:151`), split into segments

`phBody`: the header record `h` and its fresh buffers, up to `block_rlp_length`. `phMid`: the size check and the transaction root.
`phWd`: `wd_rlp_slices`, `phWdLoop`, `phTail` (withdrawal root, requests hash, block access list hash, `return h`).
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

def phBf : ExpHOL 64 := (.rstruct [(.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 3)])) (cw 24)), (.shift .lsl (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 4)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 4), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 4), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 4), (cw 3)])) (cw 24))]) (cw 32))]), (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 3)])) (cw 24)), (.shift .lsl (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 4)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 4), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 4), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 8), (cw 4), (cw 3)])) (cw 24))]) (cw 32))]), (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 3)])) (cw 24)), (.shift .lsl (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 4)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 4), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 4), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 16), (cw 4), (cw 3)])) (cw 24))]) (cw 32))]), (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 3)])) (cw 24)), (.shift .lsl (.op .or [(.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 4)])), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 4), (cw 1)])) (cw 8)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 4), (cw 2)])) (cw 16)), (.shift .lsl (.loadByte (.op .add [(lv (nm "raw")), (cw 440), (cw 24), (cw 4), (cw 3)])) (cw 24))]) (cw 32))])])

def phWdBody : ProgHOL 64 := (.decCall (nm "e") (shK 2) (nm "encode_withdrawal_rlp") [(.op .add [(.load .one (.op .add [(lv (nm "pl")), (cw 48)])), (.panop .mul [(lv (nm "i")), (cw 44)])])] (.seq (.store (.op .add [(gv (nm "wd_rlp_slices")), (.panop .mul [(lv (nm "i")), (cw 16)])]) (.rfield 0 (lv (nm "e")))) (.seq (.store (.op .add [(gv (nm "wd_rlp_slices")), (.panop .mul [(lv (nm "i")), (cw 16)]), (cw 8)]) (.rfield 1 (lv (nm "e")))) (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)])))))

def phWdLoop : ProgHOL 64 := (.while (.cmp .less (lv (nm "i")) (lv (nm "nwd"))) phWdBody)

def phTail : ProgHOL 64 := (.seq (callD (nm "build_mpt_indexed") [(gv (nm "wd_rlp_slices")), (lv (nm "nwd")), (lv (nm "wr"))]) (.decCall (nm "reqs") (shK 2) (nm "encode_execution_requests") [(.load .one (.op .add [(lv (nm "si")), (cw 32)]))] (.seq (callD (nm "compute_requests_hash") [(.rfield 0 (lv (nm "reqs"))), (.rfield 1 (lv (nm "reqs"))), (lv (nm "rh"))]) (.seq (callD (nm "keccak256") [(.load .one (.op .add [(lv (nm "pl")), (cw 64)])), (.load .one (.op .add [(lv (nm "pl")), (cw 72)])), (lv (nm "bh"))]) (.return (lv (nm "h")))))))

def phWd : ProgHOL 64 := (.dec (nm "nwd") .one (.load .one (.op .add [(lv (nm "pl")), (cw 56)])) (.seq (.call (some (some (.global, (nm "wd_rlp_slices")), none)) (nm "alloc") [(.op .add [(.panop .mul [(lv (nm "nwd")), (cw 16)]), (cw 16)])]) (.dec (nm "i") .one (cw 0) (.seq phWdLoop phTail))))

def phMid : ProgHOL 64 := (.decCall (nm "bl") .one (nm "block_rlp_length") [(lv (nm "h")), (lv (nm "pl"))] (.seq (.ite (.cmp .lower (cw 8388608) (lv (nm "bl"))) (.raise (nm "BlockErr") (cw 7)) .skip) (.seq (callD (nm "build_mpt_indexed") [(.load .one (.op .add [(lv (nm "pl")), (cw 32)])), (.load .one (.op .add [(lv (nm "pl")), (cw 40)])), (lv (nm "txr"))]) phWd)))

def phBody : ProgHOL 64 :=
(.dec (nm "pl") .one (.load .one (.op .add [(lv (nm "si")), (cw 0)]))
  (.dec (nm "raw") .one (.load .one (.op .add [(lv (nm "pl")), (cw 0)]))
    (.decCall (nm "h") .one (nm "alloc") [(cw 248)]
      (.seq (callD (nm "memzero") [(lv (nm "h")), (cw 248)])
        (.seq (.store (.op .add [(lv (nm "h")), (cw 0)]) (cw 1))
          (.seq (.store (.op .add [(lv (nm "h")), (cw 8)]) (.op .add [(lv (nm "raw")), (cw 0)]))
            (.decCall (nm "oh") .one (nm "alloc") [(cw 32)]
              (.decCall (nm "tmp") .one (nm "alloc") [(cw 8)]
                (.seq (.storeByte (lv (nm "tmp")) (cw 192))
                  (.seq (callD (nm "keccak256") [(lv (nm "tmp")), (cw 1), (lv (nm "oh"))])
                    (.seq (.store (.op .add [(lv (nm "h")), (cw 16)]) (lv (nm "oh")))
                      (.seq (.store (.op .add [(lv (nm "h")), (cw 24)]) (.op .add [(lv (nm "raw")), (cw 32)]))
                        (.seq (.store (.op .add [(lv (nm "h")), (cw 32)]) (.op .add [(lv (nm "raw")), (cw 52)]))
                          (.decCall (nm "txr") .one (nm "alloc") [(cw 32)]
                            (.seq (.store (.op .add [(lv (nm "h")), (cw 40)]) (lv (nm "txr")))
                              (.seq (.store (.op .add [(lv (nm "h")), (cw 48)]) (.op .add [(lv (nm "raw")), (cw 84)]))
                                (.seq (.store (.op .add [(lv (nm "h")), (cw 56)]) (.op .add [(lv (nm "raw")), (cw 116)]))
                                  (.seq (.store (.op .add [(lv (nm "h")), (cw 64)]) (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)]))
                                    (.seq (.store (.op .add [(lv (nm "h")), (cw 96)]) (.load .one (.op .add [(lv (nm "pl")), (cw 80)])))
                                      (.seq (.store (.op .add [(lv (nm "h")), (cw 104)]) (.load .one (.op .add [(lv (nm "pl")), (cw 88)])))
                                        (.seq (.store (.op .add [(lv (nm "h")), (cw 112)]) (.load .one (.op .add [(lv (nm "pl")), (cw 96)])))
                                          (.seq (.store (.op .add [(lv (nm "h")), (cw 120)]) (.load .one (.op .add [(lv (nm "pl")), (cw 104)])))
                                            (.seq (.store (.op .add [(lv (nm "h")), (cw 128)]) (.load .one (.op .add [(lv (nm "pl")), (cw 16)])))
                                              (.seq (.store (.op .add [(lv (nm "h")), (cw 136)]) (.load .one (.op .add [(lv (nm "pl")), (cw 24)])))
                                                (.seq (.store (.op .add [(lv (nm "h")), (cw 144)]) (.op .add [(lv (nm "raw")), (cw 372)]))
                                                  (.decCall (nm "z8") .one (nm "alloc") [(cw 8)]
                                                    (.seq (callD (nm "memzero") [(lv (nm "z8")), (cw 8)])
                                                      (.seq (.store (.op .add [(lv (nm "h")), (cw 152)]) (lv (nm "z8")))
                                                        (.dec (nm "bf") (shK 4) phBf
                                                          (.seq (.store (.op .add [(lv (nm "h")), (cw 160)]) (lv (nm "bf")))
                                                            (.decCall (nm "wr") .one (nm "alloc") [(cw 32)]
                                                              (.seq (.store (.op .add [(lv (nm "h")), (cw 192)]) (lv (nm "wr")))
                                                                (.seq (.store (.op .add [(lv (nm "h")), (cw 200)]) (.load .one (.op .add [(lv (nm "pl")), (cw 112)])))
                                                                  (.seq (.store (.op .add [(lv (nm "h")), (cw 208)]) (.load .one (.op .add [(lv (nm "pl")), (cw 120)])))
                                                                    (.seq (.store (.op .add [(lv (nm "h")), (cw 216)]) (.load .one (.op .add [(lv (nm "si")), (cw 24)])))
                                                                      (.decCall (nm "rh") .one (nm "alloc") [(cw 32)]
                                                                        (.seq (.store (.op .add [(lv (nm "h")), (cw 224)]) (lv (nm "rh")))
                                                                          (.decCall (nm "bh") .one (nm "alloc") [(cw 32)]
                                                                            (.seq (.store (.op .add [(lv (nm "h")), (cw 232)]) (lv (nm "bh")))
                                                                              (.seq (.store (.op .add [(lv (nm "h")), (cw 240)]) (.load .one (.op .add [(lv (nm "pl")), (cw 128)])))
                                                                                phMid))))))))))))))))))))))))))))))))))))))))

def phParams : List (MlS × ShapeHOL) := [(nm "si", .one)]

theorem entry_ph : fnEntry Guest.Software.guestFn_payload_header =
    (nm "payload_header", phParams, phBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ph : guestCode (nm "payload_header") = some (phParams, phBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 864) (by decide)) ⟨_, rfl⟩ entry_ph

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.code_ph
