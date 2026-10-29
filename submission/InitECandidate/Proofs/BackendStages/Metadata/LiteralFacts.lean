import InitECandidate.Proofs.BackendStages.Metadata.ChunkStubs
import InitECandidate.Proofs.BackendStages.Metadata.Chunk64_79
import InitECandidate.Proofs.BackendStages.Metadata.Chunk80_95
import InitECandidate.Proofs.BackendStages.Metadata.Chunk96_111
import InitECandidate.Proofs.BackendStages.Metadata.Chunk112_127
import InitECandidate.Proofs.BackendStages.Metadata.Chunk128_143
import InitECandidate.Proofs.BackendStages.Metadata.Chunk144_159
import InitECandidate.Proofs.BackendStages.Metadata.Chunk160_175
import InitECandidate.Proofs.BackendStages.Metadata.Chunk176_191
import InitECandidate.Proofs.BackendStages.Metadata.Chunk192_207
import InitECandidate.Proofs.BackendStages.Metadata.Chunk208_223
import InitECandidate.Proofs.BackendStages.Metadata.Chunk224_239
import InitECandidate.Proofs.BackendStages.Metadata.Chunk240_255
import InitECandidate.Proofs.BackendStages.Metadata.Chunk256_271
import InitECandidate.Proofs.BackendStages.Metadata.Chunk272_287
import InitECandidate.Proofs.BackendStages.Metadata.Chunk288_303
import InitECandidate.Proofs.BackendStages.Metadata.Chunk304_319
import InitECandidate.Proofs.BackendStages.Metadata.Chunk320_335
import InitECandidate.Proofs.BackendStages.Metadata.Chunk336_351
import InitECandidate.Proofs.BackendStages.Metadata.Chunk352_367
import InitECandidate.Proofs.BackendStages.Metadata.Chunk368_383
import InitECandidate.Proofs.BackendStages.Metadata.Chunk384_399
import InitECandidate.Proofs.BackendStages.Metadata.Chunk400_415
import InitECandidate.Proofs.BackendStages.Metadata.Chunk416_431
import InitECandidate.Proofs.BackendStages.Metadata.Chunk432_447
import InitECandidate.Proofs.BackendStages.Metadata.Chunk448_463
import InitECandidate.Proofs.BackendStages.Metadata.Chunk464_479
import InitECandidate.Proofs.BackendStages.Metadata.Chunk480_495
import InitECandidate.Proofs.BackendStages.Metadata.Chunk496_511
import InitECandidate.Proofs.BackendStages.Metadata.Chunk512_527
import InitECandidate.Proofs.BackendStages.Metadata.Chunk528_543
import InitECandidate.Proofs.BackendStages.Metadata.Chunk544_559
import InitECandidate.Proofs.BackendStages.Metadata.Chunk560_575
import InitECandidate.Proofs.BackendStages.Metadata.Chunk576_591
import InitECandidate.Proofs.BackendStages.Metadata.Chunk592_607
import InitECandidate.Proofs.BackendStages.Metadata.Chunk608_623
import InitECandidate.Proofs.BackendStages.Metadata.Chunk624_639
import InitECandidate.Proofs.BackendStages.Metadata.Chunk640_655
import InitECandidate.Proofs.BackendStages.Metadata.Chunk656_671
import InitECandidate.Proofs.BackendStages.Metadata.Chunk672_687
import InitECandidate.Proofs.BackendStages.Metadata.Chunk688_703
import InitECandidate.Proofs.BackendStages.Metadata.Chunk704_719
import InitECandidate.Proofs.BackendStages.Metadata.Chunk720_735
import InitECandidate.Proofs.BackendStages.Metadata.Chunk736_751
import InitECandidate.Proofs.BackendStages.Metadata.Chunk752_767
import InitECandidate.Proofs.BackendStages.Metadata.Chunk768_783
import InitECandidate.Proofs.BackendStages.Metadata.Chunk784_799
import InitECandidate.Proofs.BackendStages.Metadata.Chunk800_815
import InitECandidate.Proofs.BackendStages.Metadata.Chunk816_831
import InitECandidate.Proofs.BackendStages.Metadata.Chunk832_847
import InitECandidate.Proofs.BackendStages.Metadata.Chunk848_863
import InitECandidate.Proofs.BackendStages.Metadata.Chunk864_877
import InitECandidate.Proofs.BackendStages.Metadata.FinalData
import InitECandidate.Proofs.BackendStages.TargetFfis
import InitECandidate.Proofs.CompilerConfigLiteral
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

def filteredProgram : LabSem.LabProgHOL 64 := [Filtered0, Filtered1, Filtered2, Filtered4, Filtered5, Filtered6] ++ ([Filtered64, Filtered65, Filtered66, Filtered67, Filtered68, Filtered69, Filtered70, Filtered71, Filtered72, Filtered73, Filtered74, Filtered75, Filtered76, Filtered77, Filtered78, Filtered79] ++ ([Filtered80, Filtered81, Filtered82, Filtered83, Filtered84, Filtered85, Filtered86, Filtered87, Filtered88, Filtered89, Filtered90, Filtered91, Filtered92, Filtered93, Filtered94, Filtered95] ++ ([Filtered96, Filtered97, Filtered98, Filtered99, Filtered100, Filtered101, Filtered102, Filtered103, Filtered104, Filtered105, Filtered106, Filtered107, Filtered108, Filtered109, Filtered110, Filtered111] ++ ([Filtered112, Filtered113, Filtered114, Filtered115, Filtered116, Filtered117, Filtered118, Filtered119, Filtered120, Filtered121, Filtered122, Filtered123, Filtered124, Filtered125, Filtered126, Filtered127] ++ ([Filtered128, Filtered129, Filtered130, Filtered131, Filtered132, Filtered133, Filtered134, Filtered135, Filtered136, Filtered137, Filtered138, Filtered139, Filtered140, Filtered141, Filtered142, Filtered143] ++ ([Filtered144, Filtered145, Filtered146, Filtered147, Filtered148, Filtered149, Filtered150, Filtered151, Filtered152, Filtered153, Filtered154, Filtered155, Filtered156, Filtered157, Filtered158, Filtered159] ++ ([Filtered160, Filtered161, Filtered162, Filtered163, Filtered164, Filtered165, Filtered166, Filtered167, Filtered168, Filtered169, Filtered170, Filtered171, Filtered172, Filtered173, Filtered174, Filtered175] ++ ([Filtered176, Filtered177, Filtered178, Filtered179, Filtered180, Filtered181, Filtered182, Filtered183, Filtered184, Filtered185, Filtered186, Filtered187, Filtered188, Filtered189, Filtered190, Filtered191] ++ ([Filtered192, Filtered193, Filtered194, Filtered195, Filtered196, Filtered197, Filtered198, Filtered199, Filtered200, Filtered201, Filtered202, Filtered203, Filtered204, Filtered205, Filtered206, Filtered207] ++ ([Filtered208, Filtered209, Filtered210, Filtered211, Filtered212, Filtered213, Filtered214, Filtered215, Filtered216, Filtered217, Filtered218, Filtered219, Filtered220, Filtered221, Filtered222, Filtered223] ++ ([Filtered224, Filtered225, Filtered226, Filtered227, Filtered228, Filtered229, Filtered230, Filtered231, Filtered232, Filtered233, Filtered234, Filtered235, Filtered236, Filtered237, Filtered238, Filtered239] ++ ([Filtered240, Filtered241, Filtered242, Filtered243, Filtered244, Filtered245, Filtered246, Filtered247, Filtered248, Filtered249, Filtered250, Filtered251, Filtered252, Filtered253, Filtered254, Filtered255] ++ ([Filtered256, Filtered257, Filtered258, Filtered259, Filtered260, Filtered261, Filtered262, Filtered263, Filtered264, Filtered265, Filtered266, Filtered267, Filtered268, Filtered269, Filtered270, Filtered271] ++ ([Filtered272, Filtered273, Filtered274, Filtered275, Filtered276, Filtered277, Filtered278, Filtered279, Filtered280, Filtered281, Filtered282, Filtered283, Filtered284, Filtered285, Filtered286, Filtered287] ++ ([Filtered288, Filtered289, Filtered290, Filtered291, Filtered292, Filtered293, Filtered294, Filtered295, Filtered296, Filtered297, Filtered298, Filtered299, Filtered300, Filtered301, Filtered302, Filtered303] ++ ([Filtered304, Filtered305, Filtered306, Filtered307, Filtered308, Filtered309, Filtered310, Filtered311, Filtered312, Filtered313, Filtered314, Filtered315, Filtered316, Filtered317, Filtered318, Filtered319] ++ ([Filtered320, Filtered321, Filtered322, Filtered323, Filtered324, Filtered325, Filtered326, Filtered327, Filtered328, Filtered329, Filtered330, Filtered331, Filtered332, Filtered333, Filtered334, Filtered335] ++ ([Filtered336, Filtered337, Filtered338, Filtered339, Filtered340, Filtered341, Filtered342, Filtered343, Filtered344, Filtered345, Filtered346, Filtered347, Filtered348, Filtered349, Filtered350, Filtered351] ++ ([Filtered352, Filtered353, Filtered354, Filtered355, Filtered356, Filtered357, Filtered358, Filtered359, Filtered360, Filtered361, Filtered362, Filtered363, Filtered364, Filtered365, Filtered366, Filtered367] ++ ([Filtered368, Filtered369, Filtered370, Filtered371, Filtered372, Filtered373, Filtered374, Filtered375, Filtered376, Filtered377, Filtered378, Filtered379, Filtered380, Filtered381, Filtered382, Filtered383] ++ ([Filtered384, Filtered385, Filtered386, Filtered387, Filtered388, Filtered389, Filtered390, Filtered391, Filtered392, Filtered393, Filtered394, Filtered395, Filtered396, Filtered397, Filtered398, Filtered399] ++ ([Filtered400, Filtered401, Filtered402, Filtered403, Filtered404, Filtered405, Filtered406, Filtered407, Filtered408, Filtered409, Filtered410, Filtered411, Filtered412, Filtered413, Filtered414, Filtered415] ++ ([Filtered416, Filtered417, Filtered418, Filtered419, Filtered420, Filtered421, Filtered422, Filtered423, Filtered424, Filtered425, Filtered426, Filtered427, Filtered428, Filtered429, Filtered430, Filtered431] ++ ([Filtered432, Filtered433, Filtered434, Filtered435, Filtered436, Filtered437, Filtered438, Filtered439, Filtered440, Filtered441, Filtered442, Filtered443, Filtered444, Filtered445, Filtered446, Filtered447] ++ ([Filtered448, Filtered449, Filtered450, Filtered451, Filtered452, Filtered453, Filtered454, Filtered455, Filtered456, Filtered457, Filtered458, Filtered459, Filtered460, Filtered461, Filtered462, Filtered463] ++ ([Filtered464, Filtered465, Filtered466, Filtered467, Filtered468, Filtered469, Filtered470, Filtered471, Filtered472, Filtered473, Filtered474, Filtered475, Filtered476, Filtered477, Filtered478, Filtered479] ++ ([Filtered480, Filtered481, Filtered482, Filtered483, Filtered484, Filtered485, Filtered486, Filtered487, Filtered488, Filtered489, Filtered490, Filtered491, Filtered492, Filtered493, Filtered494, Filtered495] ++ ([Filtered496, Filtered497, Filtered498, Filtered499, Filtered500, Filtered501, Filtered502, Filtered503, Filtered504, Filtered505, Filtered506, Filtered507, Filtered508, Filtered509, Filtered510, Filtered511] ++ ([Filtered512, Filtered513, Filtered514, Filtered515, Filtered516, Filtered517, Filtered518, Filtered519, Filtered520, Filtered521, Filtered522, Filtered523, Filtered524, Filtered525, Filtered526, Filtered527] ++ ([Filtered528, Filtered529, Filtered530, Filtered531, Filtered532, Filtered533, Filtered534, Filtered535, Filtered536, Filtered537, Filtered538, Filtered539, Filtered540, Filtered541, Filtered542, Filtered543] ++ ([Filtered544, Filtered545, Filtered546, Filtered547, Filtered548, Filtered549, Filtered550, Filtered551, Filtered552, Filtered553, Filtered554, Filtered555, Filtered556, Filtered557, Filtered558, Filtered559] ++ ([Filtered560, Filtered561, Filtered562, Filtered563, Filtered564, Filtered565, Filtered566, Filtered567, Filtered568, Filtered569, Filtered570, Filtered571, Filtered572, Filtered573, Filtered574, Filtered575] ++ ([Filtered576, Filtered577, Filtered578, Filtered579, Filtered580, Filtered581, Filtered582, Filtered583, Filtered584, Filtered585, Filtered586, Filtered587, Filtered588, Filtered589, Filtered590, Filtered591] ++ ([Filtered592, Filtered593, Filtered594, Filtered595, Filtered596, Filtered597, Filtered598, Filtered599, Filtered600, Filtered601, Filtered602, Filtered603, Filtered604, Filtered605, Filtered606, Filtered607] ++ ([Filtered608, Filtered609, Filtered610, Filtered611, Filtered612, Filtered613, Filtered614, Filtered615, Filtered616, Filtered617, Filtered618, Filtered619, Filtered620, Filtered621, Filtered622, Filtered623] ++ ([Filtered624, Filtered625, Filtered626, Filtered627, Filtered628, Filtered629, Filtered630, Filtered631, Filtered632, Filtered633, Filtered634, Filtered635, Filtered636, Filtered637, Filtered638, Filtered639] ++ ([Filtered640, Filtered641, Filtered642, Filtered643, Filtered644, Filtered645, Filtered646, Filtered647, Filtered648, Filtered649, Filtered650, Filtered651, Filtered652, Filtered653, Filtered654, Filtered655] ++ ([Filtered656, Filtered657, Filtered658, Filtered659, Filtered660, Filtered661, Filtered662, Filtered663, Filtered664, Filtered665, Filtered666, Filtered667, Filtered668, Filtered669, Filtered670, Filtered671] ++ ([Filtered672, Filtered673, Filtered674, Filtered675, Filtered676, Filtered677, Filtered678, Filtered679, Filtered680, Filtered681, Filtered682, Filtered683, Filtered684, Filtered685, Filtered686, Filtered687] ++ ([Filtered688, Filtered689, Filtered690, Filtered691, Filtered692, Filtered693, Filtered694, Filtered695, Filtered696, Filtered697, Filtered698, Filtered699, Filtered700, Filtered701, Filtered702, Filtered703] ++ ([Filtered704, Filtered705, Filtered706, Filtered707, Filtered708, Filtered709, Filtered710, Filtered711, Filtered712, Filtered713, Filtered714, Filtered715, Filtered716, Filtered717, Filtered718, Filtered719] ++ ([Filtered720, Filtered721, Filtered722, Filtered723, Filtered724, Filtered725, Filtered726, Filtered727, Filtered728, Filtered729, Filtered730, Filtered731, Filtered732, Filtered733, Filtered734, Filtered735] ++ ([Filtered736, Filtered737, Filtered738, Filtered739, Filtered740, Filtered741, Filtered742, Filtered743, Filtered744, Filtered745, Filtered746, Filtered747, Filtered748, Filtered749, Filtered750, Filtered751] ++ ([Filtered752, Filtered753, Filtered754, Filtered755, Filtered756, Filtered757, Filtered758, Filtered759, Filtered760, Filtered761, Filtered762, Filtered763, Filtered764, Filtered765, Filtered766, Filtered767] ++ ([Filtered768, Filtered769, Filtered770, Filtered771, Filtered772, Filtered773, Filtered774, Filtered775, Filtered776, Filtered777, Filtered778, Filtered779, Filtered780, Filtered781, Filtered782, Filtered783] ++ ([Filtered784, Filtered785, Filtered786, Filtered787, Filtered788, Filtered789, Filtered790, Filtered791, Filtered792, Filtered793, Filtered794, Filtered795, Filtered796, Filtered797, Filtered798, Filtered799] ++ ([Filtered800, Filtered801, Filtered802, Filtered803, Filtered804, Filtered805, Filtered806, Filtered807, Filtered808, Filtered809, Filtered810, Filtered811, Filtered812, Filtered813, Filtered814, Filtered815] ++ ([Filtered816, Filtered817, Filtered818, Filtered819, Filtered820, Filtered821, Filtered822, Filtered823, Filtered824, Filtered825, Filtered826, Filtered827, Filtered828, Filtered829, Filtered830, Filtered831] ++ ([Filtered832, Filtered833, Filtered834, Filtered835, Filtered836, Filtered837, Filtered838, Filtered839, Filtered840, Filtered841, Filtered842, Filtered843, Filtered844, Filtered845, Filtered846, Filtered847] ++ ([Filtered848, Filtered849, Filtered850, Filtered851, Filtered852, Filtered853, Filtered854, Filtered855, Filtered856, Filtered857, Filtered858, Filtered859, Filtered860, Filtered861, Filtered862, Filtered863] ++ ([Filtered864, Filtered865, Filtered866, Filtered867, Filtered868, Filtered869, Filtered870, Filtered871, Filtered872, Filtered873, Filtered874, Filtered875, Filtered876, Filtered877] ++ [])))))))))))))))))))))))))))))))))))))))))))))))))))
def paddedProgram : LabSem.LabProgHOL 64 := [Padded0, Padded1, Padded2, Padded4, Padded5, Padded6] ++ ([Padded64, Padded65, Padded66, Padded67, Padded68, Padded69, Padded70, Padded71, Padded72, Padded73, Padded74, Padded75, Padded76, Padded77, Padded78, Padded79] ++ ([Padded80, Padded81, Padded82, Padded83, Padded84, Padded85, Padded86, Padded87, Padded88, Padded89, Padded90, Padded91, Padded92, Padded93, Padded94, Padded95] ++ ([Padded96, Padded97, Padded98, Padded99, Padded100, Padded101, Padded102, Padded103, Padded104, Padded105, Padded106, Padded107, Padded108, Padded109, Padded110, Padded111] ++ ([Padded112, Padded113, Padded114, Padded115, Padded116, Padded117, Padded118, Padded119, Padded120, Padded121, Padded122, Padded123, Padded124, Padded125, Padded126, Padded127] ++ ([Padded128, Padded129, Padded130, Padded131, Padded132, Padded133, Padded134, Padded135, Padded136, Padded137, Padded138, Padded139, Padded140, Padded141, Padded142, Padded143] ++ ([Padded144, Padded145, Padded146, Padded147, Padded148, Padded149, Padded150, Padded151, Padded152, Padded153, Padded154, Padded155, Padded156, Padded157, Padded158, Padded159] ++ ([Padded160, Padded161, Padded162, Padded163, Padded164, Padded165, Padded166, Padded167, Padded168, Padded169, Padded170, Padded171, Padded172, Padded173, Padded174, Padded175] ++ ([Padded176, Padded177, Padded178, Padded179, Padded180, Padded181, Padded182, Padded183, Padded184, Padded185, Padded186, Padded187, Padded188, Padded189, Padded190, Padded191] ++ ([Padded192, Padded193, Padded194, Padded195, Padded196, Padded197, Padded198, Padded199, Padded200, Padded201, Padded202, Padded203, Padded204, Padded205, Padded206, Padded207] ++ ([Padded208, Padded209, Padded210, Padded211, Padded212, Padded213, Padded214, Padded215, Padded216, Padded217, Padded218, Padded219, Padded220, Padded221, Padded222, Padded223] ++ ([Padded224, Padded225, Padded226, Padded227, Padded228, Padded229, Padded230, Padded231, Padded232, Padded233, Padded234, Padded235, Padded236, Padded237, Padded238, Padded239] ++ ([Padded240, Padded241, Padded242, Padded243, Padded244, Padded245, Padded246, Padded247, Padded248, Padded249, Padded250, Padded251, Padded252, Padded253, Padded254, Padded255] ++ ([Padded256, Padded257, Padded258, Padded259, Padded260, Padded261, Padded262, Padded263, Padded264, Padded265, Padded266, Padded267, Padded268, Padded269, Padded270, Padded271] ++ ([Padded272, Padded273, Padded274, Padded275, Padded276, Padded277, Padded278, Padded279, Padded280, Padded281, Padded282, Padded283, Padded284, Padded285, Padded286, Padded287] ++ ([Padded288, Padded289, Padded290, Padded291, Padded292, Padded293, Padded294, Padded295, Padded296, Padded297, Padded298, Padded299, Padded300, Padded301, Padded302, Padded303] ++ ([Padded304, Padded305, Padded306, Padded307, Padded308, Padded309, Padded310, Padded311, Padded312, Padded313, Padded314, Padded315, Padded316, Padded317, Padded318, Padded319] ++ ([Padded320, Padded321, Padded322, Padded323, Padded324, Padded325, Padded326, Padded327, Padded328, Padded329, Padded330, Padded331, Padded332, Padded333, Padded334, Padded335] ++ ([Padded336, Padded337, Padded338, Padded339, Padded340, Padded341, Padded342, Padded343, Padded344, Padded345, Padded346, Padded347, Padded348, Padded349, Padded350, Padded351] ++ ([Padded352, Padded353, Padded354, Padded355, Padded356, Padded357, Padded358, Padded359, Padded360, Padded361, Padded362, Padded363, Padded364, Padded365, Padded366, Padded367] ++ ([Padded368, Padded369, Padded370, Padded371, Padded372, Padded373, Padded374, Padded375, Padded376, Padded377, Padded378, Padded379, Padded380, Padded381, Padded382, Padded383] ++ ([Padded384, Padded385, Padded386, Padded387, Padded388, Padded389, Padded390, Padded391, Padded392, Padded393, Padded394, Padded395, Padded396, Padded397, Padded398, Padded399] ++ ([Padded400, Padded401, Padded402, Padded403, Padded404, Padded405, Padded406, Padded407, Padded408, Padded409, Padded410, Padded411, Padded412, Padded413, Padded414, Padded415] ++ ([Padded416, Padded417, Padded418, Padded419, Padded420, Padded421, Padded422, Padded423, Padded424, Padded425, Padded426, Padded427, Padded428, Padded429, Padded430, Padded431] ++ ([Padded432, Padded433, Padded434, Padded435, Padded436, Padded437, Padded438, Padded439, Padded440, Padded441, Padded442, Padded443, Padded444, Padded445, Padded446, Padded447] ++ ([Padded448, Padded449, Padded450, Padded451, Padded452, Padded453, Padded454, Padded455, Padded456, Padded457, Padded458, Padded459, Padded460, Padded461, Padded462, Padded463] ++ ([Padded464, Padded465, Padded466, Padded467, Padded468, Padded469, Padded470, Padded471, Padded472, Padded473, Padded474, Padded475, Padded476, Padded477, Padded478, Padded479] ++ ([Padded480, Padded481, Padded482, Padded483, Padded484, Padded485, Padded486, Padded487, Padded488, Padded489, Padded490, Padded491, Padded492, Padded493, Padded494, Padded495] ++ ([Padded496, Padded497, Padded498, Padded499, Padded500, Padded501, Padded502, Padded503, Padded504, Padded505, Padded506, Padded507, Padded508, Padded509, Padded510, Padded511] ++ ([Padded512, Padded513, Padded514, Padded515, Padded516, Padded517, Padded518, Padded519, Padded520, Padded521, Padded522, Padded523, Padded524, Padded525, Padded526, Padded527] ++ ([Padded528, Padded529, Padded530, Padded531, Padded532, Padded533, Padded534, Padded535, Padded536, Padded537, Padded538, Padded539, Padded540, Padded541, Padded542, Padded543] ++ ([Padded544, Padded545, Padded546, Padded547, Padded548, Padded549, Padded550, Padded551, Padded552, Padded553, Padded554, Padded555, Padded556, Padded557, Padded558, Padded559] ++ ([Padded560, Padded561, Padded562, Padded563, Padded564, Padded565, Padded566, Padded567, Padded568, Padded569, Padded570, Padded571, Padded572, Padded573, Padded574, Padded575] ++ ([Padded576, Padded577, Padded578, Padded579, Padded580, Padded581, Padded582, Padded583, Padded584, Padded585, Padded586, Padded587, Padded588, Padded589, Padded590, Padded591] ++ ([Padded592, Padded593, Padded594, Padded595, Padded596, Padded597, Padded598, Padded599, Padded600, Padded601, Padded602, Padded603, Padded604, Padded605, Padded606, Padded607] ++ ([Padded608, Padded609, Padded610, Padded611, Padded612, Padded613, Padded614, Padded615, Padded616, Padded617, Padded618, Padded619, Padded620, Padded621, Padded622, Padded623] ++ ([Padded624, Padded625, Padded626, Padded627, Padded628, Padded629, Padded630, Padded631, Padded632, Padded633, Padded634, Padded635, Padded636, Padded637, Padded638, Padded639] ++ ([Padded640, Padded641, Padded642, Padded643, Padded644, Padded645, Padded646, Padded647, Padded648, Padded649, Padded650, Padded651, Padded652, Padded653, Padded654, Padded655] ++ ([Padded656, Padded657, Padded658, Padded659, Padded660, Padded661, Padded662, Padded663, Padded664, Padded665, Padded666, Padded667, Padded668, Padded669, Padded670, Padded671] ++ ([Padded672, Padded673, Padded674, Padded675, Padded676, Padded677, Padded678, Padded679, Padded680, Padded681, Padded682, Padded683, Padded684, Padded685, Padded686, Padded687] ++ ([Padded688, Padded689, Padded690, Padded691, Padded692, Padded693, Padded694, Padded695, Padded696, Padded697, Padded698, Padded699, Padded700, Padded701, Padded702, Padded703] ++ ([Padded704, Padded705, Padded706, Padded707, Padded708, Padded709, Padded710, Padded711, Padded712, Padded713, Padded714, Padded715, Padded716, Padded717, Padded718, Padded719] ++ ([Padded720, Padded721, Padded722, Padded723, Padded724, Padded725, Padded726, Padded727, Padded728, Padded729, Padded730, Padded731, Padded732, Padded733, Padded734, Padded735] ++ ([Padded736, Padded737, Padded738, Padded739, Padded740, Padded741, Padded742, Padded743, Padded744, Padded745, Padded746, Padded747, Padded748, Padded749, Padded750, Padded751] ++ ([Padded752, Padded753, Padded754, Padded755, Padded756, Padded757, Padded758, Padded759, Padded760, Padded761, Padded762, Padded763, Padded764, Padded765, Padded766, Padded767] ++ ([Padded768, Padded769, Padded770, Padded771, Padded772, Padded773, Padded774, Padded775, Padded776, Padded777, Padded778, Padded779, Padded780, Padded781, Padded782, Padded783] ++ ([Padded784, Padded785, Padded786, Padded787, Padded788, Padded789, Padded790, Padded791, Padded792, Padded793, Padded794, Padded795, Padded796, Padded797, Padded798, Padded799] ++ ([Padded800, Padded801, Padded802, Padded803, Padded804, Padded805, Padded806, Padded807, Padded808, Padded809, Padded810, Padded811, Padded812, Padded813, Padded814, Padded815] ++ ([Padded816, Padded817, Padded818, Padded819, Padded820, Padded821, Padded822, Padded823, Padded824, Padded825, Padded826, Padded827, Padded828, Padded829, Padded830, Padded831] ++ ([Padded832, Padded833, Padded834, Padded835, Padded836, Padded837, Padded838, Padded839, Padded840, Padded841, Padded842, Padded843, Padded844, Padded845, Padded846, Padded847] ++ ([Padded848, Padded849, Padded850, Padded851, Padded852, Padded853, Padded854, Padded855, Padded856, Padded857, Padded858, Padded859, Padded860, Padded861, Padded862, Padded863] ++ ([Padded864, Padded865, Padded866, Padded867, Padded868, Padded869, Padded870, Padded871, Padded872, Padded873, Padded874, Padded875, Padded876, Padded877] ++ [])))))))))))))))))))))))))))))))))))))))))))))))))))
theorem ffiLiteral_eq : LabToTarget.findFfiNames filteredProgram = Target.ffis := by
  unfold filteredProgram
  exact ffiChunkStubs _ ( ffiChunk64_79 _ ( ffiChunk80_95 _ ( ffiChunk96_111 _ ( ffiChunk112_127 _ ( ffiChunk128_143 _ ( ffiChunk144_159 _ ( ffiChunk160_175 _ ( ffiChunk176_191 _ ( ffiChunk192_207 _ ( ffiChunk208_223 _ ( ffiChunk224_239 _ ( ffiChunk240_255 _ ( ffiChunk256_271 _ ( ffiChunk272_287 _ ( ffiChunk288_303 _ ( ffiChunk304_319 _ ( ffiChunk320_335 _ ( ffiChunk336_351 _ ( ffiChunk352_367 _ ( ffiChunk368_383 _ ( ffiChunk384_399 _ ( ffiChunk400_415 _ ( ffiChunk416_431 _ ( ffiChunk432_447 _ ( ffiChunk448_463 _ ( ffiChunk464_479 _ ( ffiChunk480_495 _ ( ffiChunk496_511 _ ( ffiChunk512_527 _ ( ffiChunk528_543 _ ( ffiChunk544_559 _ ( ffiChunk560_575 _ ( ffiChunk576_591 _ ( ffiChunk592_607 _ ( ffiChunk608_623 _ ( ffiChunk624_639 _ ( ffiChunk640_655 _ ( ffiChunk656_671 _ ( ffiChunk672_687 _ ( ffiChunk688_703 _ ( ffiChunk704_719 _ ( ffiChunk720_735 _ ( ffiChunk736_751 _ ( ffiChunk752_767 _ ( ffiChunk768_783 _ ( ffiChunk784_799 _ ( ffiChunk800_815 _ ( ffiChunk816_831 _ ( ffiChunk832_847 _ ( ffiChunk848_863 _ ( ffiChunk864_877 _ ((by simp only [LabToTarget.findFfiNames, nextFfis877])))))))))))))))))))))))))))))))))))))))))))))))))))))
theorem shmemLiteral_eq : LabToTarget.getShmemInfo paddedProgram 0 [] [] = (shmemFfis, InitE.baselineLabConfig.shmemExtra) := by
  unfold paddedProgram
  change LabToTarget.getShmemInfo _ 0 beforeFfis0 beforeShmem0 = _
  rw [shmemChunkStubs]
  change LabToTarget.getShmemInfo _ 1000 beforeFfis64 beforeShmem64 = _
  rw [shmemChunk64_79]
  change LabToTarget.getShmemInfo _ 7976 beforeFfis80 beforeShmem80 = _
  rw [shmemChunk80_95]
  change LabToTarget.getShmemInfo _ 10272 beforeFfis96 beforeShmem96 = _
  rw [shmemChunk96_111]
  change LabToTarget.getShmemInfo _ 11776 beforeFfis112 beforeShmem112 = _
  rw [shmemChunk112_127]
  change LabToTarget.getShmemInfo _ 21264 beforeFfis128 beforeShmem128 = _
  rw [shmemChunk128_143]
  change LabToTarget.getShmemInfo _ 29520 beforeFfis144 beforeShmem144 = _
  rw [shmemChunk144_159]
  change LabToTarget.getShmemInfo _ 87592 beforeFfis160 beforeShmem160 = _
  rw [shmemChunk160_175]
  change LabToTarget.getShmemInfo _ 96624 beforeFfis176 beforeShmem176 = _
  rw [shmemChunk176_191]
  change LabToTarget.getShmemInfo _ 102120 beforeFfis192 beforeShmem192 = _
  rw [shmemChunk192_207]
  change LabToTarget.getShmemInfo _ 118404 beforeFfis208 beforeShmem208 = _
  rw [shmemChunk208_223]
  change LabToTarget.getShmemInfo _ 129580 beforeFfis224 beforeShmem224 = _
  rw [shmemChunk224_239]
  change LabToTarget.getShmemInfo _ 176064 beforeFfis240 beforeShmem240 = _
  rw [shmemChunk240_255]
  change LabToTarget.getShmemInfo _ 189488 beforeFfis256 beforeShmem256 = _
  rw [shmemChunk256_271]
  change LabToTarget.getShmemInfo _ 208784 beforeFfis272 beforeShmem272 = _
  rw [shmemChunk272_287]
  change LabToTarget.getShmemInfo _ 230160 beforeFfis288 beforeShmem288 = _
  rw [shmemChunk288_303]
  change LabToTarget.getShmemInfo _ 239620 beforeFfis304 beforeShmem304 = _
  rw [shmemChunk304_319]
  change LabToTarget.getShmemInfo _ 252648 beforeFfis320 beforeShmem320 = _
  rw [shmemChunk320_335]
  change LabToTarget.getShmemInfo _ 266148 beforeFfis336 beforeShmem336 = _
  rw [shmemChunk336_351]
  change LabToTarget.getShmemInfo _ 276496 beforeFfis352 beforeShmem352 = _
  rw [shmemChunk352_367]
  change LabToTarget.getShmemInfo _ 286424 beforeFfis368 beforeShmem368 = _
  rw [shmemChunk368_383]
  change LabToTarget.getShmemInfo _ 294128 beforeFfis384 beforeShmem384 = _
  rw [shmemChunk384_399]
  change LabToTarget.getShmemInfo _ 303396 beforeFfis400 beforeShmem400 = _
  rw [shmemChunk400_415]
  change LabToTarget.getShmemInfo _ 311936 beforeFfis416 beforeShmem416 = _
  rw [shmemChunk416_431]
  change LabToTarget.getShmemInfo _ 320936 beforeFfis432 beforeShmem432 = _
  rw [shmemChunk432_447]
  change LabToTarget.getShmemInfo _ 328876 beforeFfis448 beforeShmem448 = _
  rw [shmemChunk448_463]
  change LabToTarget.getShmemInfo _ 356912 beforeFfis464 beforeShmem464 = _
  rw [shmemChunk464_479]
  change LabToTarget.getShmemInfo _ 360332 beforeFfis480 beforeShmem480 = _
  rw [shmemChunk480_495]
  change LabToTarget.getShmemInfo _ 367264 beforeFfis496 beforeShmem496 = _
  rw [shmemChunk496_511]
  change LabToTarget.getShmemInfo _ 379460 beforeFfis512 beforeShmem512 = _
  rw [shmemChunk512_527]
  change LabToTarget.getShmemInfo _ 391728 beforeFfis528 beforeShmem528 = _
  rw [shmemChunk528_543]
  change LabToTarget.getShmemInfo _ 401564 beforeFfis544 beforeShmem544 = _
  rw [shmemChunk544_559]
  change LabToTarget.getShmemInfo _ 417856 beforeFfis560 beforeShmem560 = _
  rw [shmemChunk560_575]
  change LabToTarget.getShmemInfo _ 431096 beforeFfis576 beforeShmem576 = _
  rw [shmemChunk576_591]
  change LabToTarget.getShmemInfo _ 448808 beforeFfis592 beforeShmem592 = _
  rw [shmemChunk592_607]
  change LabToTarget.getShmemInfo _ 481004 beforeFfis608 beforeShmem608 = _
  rw [shmemChunk608_623]
  change LabToTarget.getShmemInfo _ 516472 beforeFfis624 beforeShmem624 = _
  rw [shmemChunk624_639]
  change LabToTarget.getShmemInfo _ 535504 beforeFfis640 beforeShmem640 = _
  rw [shmemChunk640_655]
  change LabToTarget.getShmemInfo _ 578596 beforeFfis656 beforeShmem656 = _
  rw [shmemChunk656_671]
  change LabToTarget.getShmemInfo _ 602848 beforeFfis672 beforeShmem672 = _
  rw [shmemChunk672_687]
  change LabToTarget.getShmemInfo _ 627408 beforeFfis688 beforeShmem688 = _
  rw [shmemChunk688_703]
  change LabToTarget.getShmemInfo _ 666848 beforeFfis704 beforeShmem704 = _
  rw [shmemChunk704_719]
  change LabToTarget.getShmemInfo _ 723376 beforeFfis720 beforeShmem720 = _
  rw [shmemChunk720_735]
  change LabToTarget.getShmemInfo _ 735484 beforeFfis736 beforeShmem736 = _
  rw [shmemChunk736_751]
  change LabToTarget.getShmemInfo _ 747984 beforeFfis752 beforeShmem752 = _
  rw [shmemChunk752_767]
  change LabToTarget.getShmemInfo _ 767408 beforeFfis768 beforeShmem768 = _
  rw [shmemChunk768_783]
  change LabToTarget.getShmemInfo _ 802160 beforeFfis784 beforeShmem784 = _
  rw [shmemChunk784_799]
  change LabToTarget.getShmemInfo _ 846584 beforeFfis800 beforeShmem800 = _
  rw [shmemChunk800_815]
  change LabToTarget.getShmemInfo _ 881848 beforeFfis816 beforeShmem816 = _
  rw [shmemChunk816_831]
  change LabToTarget.getShmemInfo _ 897140 beforeFfis832 beforeShmem832 = _
  rw [shmemChunk832_847]
  change LabToTarget.getShmemInfo _ 917144 beforeFfis848 beforeShmem848 = _
  rw [shmemChunk848_863]
  change LabToTarget.getShmemInfo _ 963836 beforeFfis864 beforeShmem864 = _
  rw [shmemChunk864_877]
  simp only [LabToTarget.getShmemInfo]
  with_unfolding_all rfl
theorem symbolsLiteral_eq : LabToTarget.getSymbols 0 paddedProgram = InitE.baselineLabConfig.secPosLen := by
  unfold paddedProgram
  rw [symbolsChunkStubs, symbolsChunk64_79, symbolsChunk80_95, symbolsChunk96_111, symbolsChunk112_127, symbolsChunk128_143, symbolsChunk144_159, symbolsChunk160_175, symbolsChunk176_191, symbolsChunk192_207, symbolsChunk208_223, symbolsChunk224_239, symbolsChunk240_255, symbolsChunk256_271, symbolsChunk272_287, symbolsChunk288_303, symbolsChunk304_319, symbolsChunk320_335, symbolsChunk336_351, symbolsChunk352_367, symbolsChunk368_383, symbolsChunk384_399, symbolsChunk400_415, symbolsChunk416_431, symbolsChunk432_447, symbolsChunk448_463, symbolsChunk464_479, symbolsChunk480_495, symbolsChunk496_511, symbolsChunk512_527, symbolsChunk528_543, symbolsChunk544_559, symbolsChunk560_575, symbolsChunk576_591, symbolsChunk592_607, symbolsChunk608_623, symbolsChunk624_639, symbolsChunk640_655, symbolsChunk656_671, symbolsChunk672_687, symbolsChunk688_703, symbolsChunk704_719, symbolsChunk720_735, symbolsChunk736_751, symbolsChunk752_767, symbolsChunk768_783, symbolsChunk784_799, symbolsChunk800_815, symbolsChunk816_831, symbolsChunk832_847, symbolsChunk848_863, symbolsChunk864_877]
  with_unfolding_all rfl
theorem ffiNames_eq : some (Target.ffis ++ shmemFfis) = InitE.baselineLabConfig.ffiNames := by
  with_unfolding_all rfl
#print axioms ffiLiteral_eq
#print axioms shmemLiteral_eq
#print axioms symbolsLiteral_eq
#print axioms ffiNames_eq
end InitECandidate.Proofs.BackendStages.Metadata
